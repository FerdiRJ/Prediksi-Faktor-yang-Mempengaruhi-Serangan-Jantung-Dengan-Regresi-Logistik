# Memuat pustaka yang diperlukan
library(readr)
library(caret)
library(zoo)

data <- read.csv("/Users/hendracahyonoh/Downloads/Statistika/framingham.csv")

head(data)

#cek tipe data
str(data)
#ringkasan data 
summary(data)

#cek missing value
any(is.na(data))

#merubah variabel independent yang bersifat kategorikal menjadi sebuah factor
# Menentukan variabel kategorikal
kategorikal_vars <- c("male", "education", "currentSmoker", "BPMeds", "prevalentStroke", "prevalentHyp", "diabetes")

# Mengonversi variabel kategorikal menjadi faktor
data[kategorikal_vars] <- lapply(data[kategorikal_vars], as.factor)

#cek tipe data
str(data)

# Menghapus baris yang memiliki nilai yang hilang
data <- na.omit(data)

# Memilih semua kolom (variabel independent) untuk pemodelan
fitur <- data[, !names(data) %in% c("TenYearCHD")]

#membuat dataframe baru yang berisi semua variabel independent
datanew <- data.frame(fitur, TenYearCHD = data$TenYearCHD)

#splitt data 
inTrain <- createDataPartition(y = datanew$TenYearCHD, p = 0.80, list = FALSE)
training <- datanew[inTrain,]
testing <- datanew[-inTrain,]

#training model
chd_model <- glm(TenYearCHD ~ ., data = training, family = binomial)
summary(chd_model)

# Prediksi pada set pengujian
chd_prob <- predict(chd_model, testing, type = "response")
y_pred_num <- ifelse(chd_prob > 0.5, 1, 0)
y_pred <- factor(y_pred_num, levels = c(0, 1))
y_act <- testing$TenYearCHD

# Matriks kebingungan dan akurasi
conf_matrix <- table(y_pred, y_act)
print(conf_matrix)
accuracy <- mean(y_pred == y_act)
print(paste("Akurasi:", accuracy))



# model dengan seleksi variabel independent(fitur)
# Membuat model awal
initial_model <- glm(TenYearCHD ~ ., data = training, family = binomial)

# Menjalankan stepwise regression (backward)
stepwise_model <- step(initial_model, direction = "backward")

# Menampilkan hasil
summary(stepwise_model)

# Prediksi pada set pengujian
chd_prob <- predict(stepwise_model, testing, type = "response")
y_pred_num <- ifelse(chd_prob > 0.5, 1, 0)
y_pred <- factor(y_pred_num, levels = c(0, 1))
y_act <- testing$TenYearCHD

# Matriks kebingungan dan akurasi
conf_matrix <- table(y_pred, y_act)
print(conf_matrix)
accuracy <- mean(y_pred == y_act)
print(paste("Akurasi:", accuracy))