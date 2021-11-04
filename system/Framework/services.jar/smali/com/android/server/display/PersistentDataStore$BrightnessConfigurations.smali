.class final Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BrightnessConfigurations"
.end annotation


# instance fields
.field private mConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/display/BrightnessConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSetConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/display/BrightnessConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mSetPackageNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSetTimeStamps:Landroid/util/SparseLongArray;

.field private mTimeStamps:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 930
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 931
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 934
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    .line 935
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    .line 936
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    .line 938
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;
    .param p1, "x1"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 914
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static fileWriteInt(Ljava/lang/String;I)V
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 1303
    const/4 v0, 0x0

    .line 1304
    .local v0, "out":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileWriteInt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersistentDataStore"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :try_start_1f
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_29} :catch_47
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_3a

    move-object v0, v1

    .line 1310
    nop

    .line 1311
    :try_start_2b
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1312
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_39} :catch_3a

    .line 1320
    goto :goto_46

    .line 1313
    :catch_3a
    move-exception v1

    .line 1314
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1316
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    .line 1319
    goto :goto_46

    .line 1317
    :catch_42
    move-exception v2

    .line 1318
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1321
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    :goto_46
    return-void

    .line 1308
    :catch_47
    move-exception v1

    .line 1309
    .local v1, "e":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private readFilePosition()I
    .registers 8

    .line 1258
    const/4 v0, 0x0

    .line 1259
    .local v0, "ret":I
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log/BC_Position"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1260
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "PersistentDataStore"

    if-eqz v3, :cond_3e

    .line 1261
    invoke-direct {p0, v2}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1262
    .local v2, "strData":Ljava/lang/String;
    if-nez v2, :cond_1d

    .line 1263
    const-string v3, "/data/log/BC_Position : data is null."

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    const/4 v0, -0x1

    goto :goto_3d

    .line 1267
    :cond_1d
    :try_start_1d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_21} :catch_23

    move v0, v3

    .line 1270
    goto :goto_3d

    .line 1268
    :catch_23
    move-exception v3

    .line 1269
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/log/BC_Position : data is \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    .end local v2    # "strData":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_3d
    goto :goto_48

    .line 1273
    :cond_3e
    const-string/jumbo v3, "make new position file"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->fileWriteInt(Ljava/lang/String;I)V

    .line 1276
    :goto_48
    return v0
.end method

.method private readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .line 1280
    const-string v0, "PersistentDataStore"

    const/4 v1, 0x0

    .line 1281
    .local v1, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1283
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_4
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 1284
    nop

    .line 1285
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1286
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 1287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readFromFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_38} :catch_39

    .line 1298
    goto :goto_4d

    .line 1289
    :catch_39
    move-exception v3

    .line 1290
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "IOException in readFromFile"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    if-eqz v2, :cond_4c

    .line 1293
    :try_start_41
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_4c

    .line 1295
    :catch_45
    move-exception v4

    .line 1296
    .local v4, "err":Ljava/lang/Exception;
    const-string v5, "Exception in readFromFile"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 1297
    .end local v4    # "err":Ljava/lang/Exception;
    :cond_4c
    :goto_4c
    nop

    .line 1299
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4d
    return-object v1
.end method

.method private setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z
    .registers 8
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userSerial"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 942
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 945
    .local v0, "currentConfig":Landroid/hardware/display/BrightnessConfiguration;
    if-eqz p1, :cond_34

    .line 946
    if-nez p3, :cond_12

    .line 947
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_17

    .line 949
    :cond_12
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 951
    :goto_17
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 953
    if-eqz v0, :cond_2f

    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 954
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_34

    .line 956
    :cond_2f
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 960
    :cond_34
    :goto_34
    if-eq v0, p1, :cond_6d

    if-eqz v0, :cond_3e

    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 961
    :cond_3e
    if-eqz p1, :cond_5c

    .line 962
    if-nez p3, :cond_48

    .line 963
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4d

    .line 965
    :cond_48
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 967
    :goto_4d
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 968
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6b

    .line 970
    :cond_5c
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 971
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 972
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 974
    :goto_6b
    const/4 v1, 0x1

    return v1

    .line 976
    :cond_6d
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1047
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const-string v2, "  "

    if-ge v0, v1, :cond_94

    .line 1048
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1049
    .local v1, "userSerial":I
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v6

    .line 1050
    .local v6, "time":J
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1051
    .local v3, "packageName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    cmp-long v4, v6, v4

    if-eqz v4, :cond_5c

    .line 1053
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  set at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    :cond_5c
    if-eqz v3, :cond_75

    .line 1056
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  set by: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    :cond_75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    .end local v1    # "userSerial":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "time":J
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1061
    .end local v0    # "i":I
    :cond_94
    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->dumpSetBrightnessConfiguration(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method public dumpSetBrightnessConfiguration(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1222
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n dumpSetBrightnessConfiguration_1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1223
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/Brightness_Configurations_1"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1224
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1225
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 1226
    .local v1, "scan":Ljava/util/Scanner;
    :goto_26
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1227
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    .line 1229
    :cond_34
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_37} :catch_38

    .line 1233
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "scan":Ljava/util/Scanner;
    :cond_37
    goto :goto_3c

    .line 1231
    :catch_38
    move-exception v0

    .line 1232
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1236
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_3c
    :try_start_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n dumpSetBrightnessConfiguration_2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/Brightness_Configurations_2"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1238
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1239
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 1240
    .restart local v1    # "scan":Ljava/util/Scanner;
    :goto_62
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1241
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_62

    .line 1243
    :cond_70
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_73} :catch_74

    .line 1247
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "scan":Ljava/util/Scanner;
    :cond_73
    goto :goto_78

    .line 1245
    :catch_74
    move-exception v0

    .line 1246
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1248
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_78
    return-void
.end method

.method public getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3
    .param p1, "userSerial"    # I

    .line 980
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 984
    const-string v0, "PersistentDataStore"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 985
    .local v1, "outerDepth":I
    :cond_6
    :goto_6
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 986
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "brightness-configuration"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 989
    const/4 v2, 0x0

    :try_start_19
    const-string/jumbo v3, "user-serial"

    .line 990
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 989
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_24} :catch_25

    .line 994
    .local v3, "userSerial":I
    goto :goto_2d

    .line 991
    .end local v3    # "userSerial":I
    :catch_25
    move-exception v3

    .line 992
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    .line 993
    .local v4, "userSerial":I
    const-string v5, "Failed to read in brightness configuration"

    invoke-static {v0, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 996
    .end local v4    # "userSerial":I
    .local v3, "userSerial":I
    :goto_2d
    const-string/jumbo v4, "package-name"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 997
    .local v4, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "timestamp"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 998
    .local v2, "timeStampString":Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 999
    .local v5, "timeStamp":J
    if-eqz v2, :cond_46

    .line 1001
    :try_start_3f
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_43} :catch_45

    move-wide v5, v7

    .line 1004
    goto :goto_46

    .line 1002
    :catch_45
    move-exception v7

    .line 1008
    :cond_46
    :goto_46
    nop

    .line 1009
    :try_start_47
    invoke-static {p1}, Landroid/hardware/display/BrightnessConfiguration;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v7

    .line 1010
    .local v7, "config":Landroid/hardware/display/BrightnessConfiguration;
    if-ltz v3, :cond_66

    if-eqz v7, :cond_66

    .line 1011
    iget-object v8, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v8, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1012
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-eqz v8, :cond_5f

    .line 1013
    iget-object v8, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1015
    :cond_5f
    if-eqz v4, :cond_66

    .line 1016
    iget-object v8, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v8, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_66} :catch_67

    .line 1021
    .end local v7    # "config":Landroid/hardware/display/BrightnessConfiguration;
    :cond_66
    goto :goto_6d

    .line 1019
    :catch_67
    move-exception v7

    .line 1020
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    const-string v8, "Failed to load brightness configuration!"

    invoke-static {v0, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1022
    .end local v2    # "timeStampString":Ljava/lang/String;
    .end local v3    # "userSerial":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "timeStamp":J
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_6d
    goto :goto_6

    .line 1024
    :cond_6e
    return-void
.end method

.method public saveHistory(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1067
    .local p1, "weights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "timeWeights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "continuityWeights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    const-string v2, "\n  set at: "

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->readFilePosition()I

    move-result v3

    .line 1068
    .local v3, "filePosition":I
    const/4 v4, 0x0

    .line 1069
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1071
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 1074
    .local v6, "size":I
    const-string v0, "/data/log/Brightness_Configurations_1"

    if-eqz v3, :cond_79

    const-string v7, "/data/log/BC_Position"

    const v8, 0x186a0

    const-string v9, "/data/log/Brightness_Configurations_2"

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v3, v11, :cond_4d

    if-eq v3, v10, :cond_24

    .line 1109
    :try_start_1c
    const-string v0, "PersistentDataStore"

    const-string v7, "Error case"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return-void

    .line 1096
    :cond_24
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v10

    .line 1097
    .local v9, "file":Ljava/io/File;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v10

    .line 1098
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v10

    if-gt v10, v8, :cond_3c

    .line 1099
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v0, "fos":Ljava/io/FileOutputStream;
    goto :goto_85

    .line 1101
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_3c
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v8

    .line 1102
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    .line 1103
    invoke-static {v7, v11}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->fileWriteInt(Ljava/lang/String;I)V

    .line 1105
    move-object v0, v4

    goto :goto_85

    .line 1083
    .end local v9    # "file":Ljava/io/File;
    :cond_4d
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v12

    .line 1084
    .local v0, "file":Ljava/io/File;
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v12

    .line 1085
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v12

    if-gt v12, v8, :cond_68

    .line 1086
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v4, v7

    move-object v9, v0

    move-object v0, v4

    goto :goto_85

    .line 1088
    :cond_68
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v8

    .line 1089
    .end local v0    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    .line 1090
    invoke-static {v7, v10}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->fileWriteInt(Ljava/lang/String;I)V

    .line 1092
    move-object v0, v4

    goto :goto_85

    .line 1077
    .end local v9    # "file":Ljava/io/File;
    :cond_79
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v7

    .line 1078
    .restart local v9    # "file":Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_84} :catch_87

    .line 1079
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v0, "fos":Ljava/io/FileOutputStream;
    nop

    .line 1115
    :goto_85
    move-object v4, v0

    goto :goto_8b

    .line 1113
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_87
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1117
    .end local v0    # "e":Ljava/io/IOException;
    :goto_8b
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_8d
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_277

    .line 1118
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1119
    .local v8, "userSerial":I
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    const-wide/16 v9, -0x1

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v9

    .line 1120
    .local v9, "time":J
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 1122
    .local v11, "packageName":Ljava/lang/String;
    :try_start_ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\n\n User "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1123
    .local v0, "element":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 1125
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 1126
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 1128
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    .line 1129
    .local v12, "systemTimeZone":Ljava/util/TimeZone;
    invoke-virtual {v12, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v13

    int-to-long v13, v13

    .line 1130
    .local v13, "offSetTime":J
    const-wide/32 v15, 0x36ee80

    div-long v15, v13, v15

    .line 1131
    .local v15, "offSet":J
    move-object/from16 v17, v0

    .end local v0    # "element":Ljava/lang/String;
    .local v17, "element":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_fc} :catch_265

    add-long v18, v9, v13

    move-object/from16 v20, v2

    :try_start_100
    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " GMT : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1132
    .end local v17    # "element":Ljava/lang/String;
    .restart local v0    # "element":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "element":Ljava/lang/String;
    .restart local v17    # "element":Ljava/lang/String;
    const-string v0, "\n  set by: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    .end local v17    # "element":Ljava/lang/String;
    .restart local v0    # "element":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1137
    iget-object v2, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_13e} :catch_263

    if-nez v2, :cond_14c

    .line 1138
    :try_start_140
    const-string v2, "\n   Same Configuration"
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_142} :catch_147

    move-object v0, v2

    move/from16 v22, v3

    goto/16 :goto_259

    .line 1209
    .end local v0    # "element":Ljava/lang/String;
    .end local v12    # "systemTimeZone":Ljava/util/TimeZone;
    .end local v13    # "offSetTime":J
    .end local v15    # "offSet":J
    :catch_147
    move-exception v0

    move/from16 v22, v3

    goto/16 :goto_26a

    .line 1141
    .restart local v0    # "element":Ljava/lang/String;
    .restart local v12    # "systemTimeZone":Ljava/util/TimeZone;
    .restart local v13    # "offSetTime":J
    .restart local v15    # "offSet":J
    :cond_14c
    :try_start_14c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "element":Ljava/lang/String;
    .restart local v17    # "element":Ljava/lang/String;
    const-string v0, "\n   "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .end local v17    # "element":Ljava/lang/String;
    .restart local v0    # "element":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_16c} :catch_263

    .line 1145
    const-string v2, "),"

    move-object/from16 v17, v0

    .end local v0    # "element":Ljava/lang/String;
    .restart local v17    # "element":Ljava/lang/String;
    const-string v0, " ("

    if-eqz p1, :cond_1bd

    .line 1146
    :try_start_174
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    .line 1147
    .local v18, "weightsSize":I
    if-eqz v18, :cond_1ba

    .line 1148
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 1149
    .local v19, "iterator":Ljava/util/Iterator;
    const-string v21, "\n   weight: "

    move-object/from16 v17, v21

    .line 1150
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1151
    :goto_189
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_19b} :catch_263

    move/from16 v22, v3

    .end local v3    # "filePosition":I
    .local v22, "filePosition":I
    :try_start_19d
    move-object/from16 v3, v21

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v1

    .line 1153
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    move/from16 v3, v22

    goto :goto_189

    .line 1151
    .end local v22    # "filePosition":I
    .restart local v3    # "filePosition":I
    :cond_1b7
    move/from16 v22, v3

    .end local v3    # "filePosition":I
    .restart local v22    # "filePosition":I
    goto :goto_1bf

    .line 1147
    .end local v19    # "iterator":Ljava/util/Iterator;
    .end local v22    # "filePosition":I
    .restart local v3    # "filePosition":I
    :cond_1ba
    move/from16 v22, v3

    .end local v3    # "filePosition":I
    .restart local v22    # "filePosition":I
    goto :goto_1bf

    .line 1145
    .end local v18    # "weightsSize":I
    .end local v22    # "filePosition":I
    .restart local v3    # "filePosition":I
    :cond_1bd
    move/from16 v22, v3

    .line 1158
    .end local v3    # "filePosition":I
    .restart local v22    # "filePosition":I
    :goto_1bf
    if-eqz p2, :cond_20b

    .line 1159
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    .line 1160
    .local v1, "weightsSize":I
    if-eqz v1, :cond_209

    .line 1161
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1162
    .local v3, "iterator":Ljava/util/Iterator;
    const-string v18, "\n   timeWeights: "

    move-object/from16 v17, v18

    .line 1163
    move/from16 v18, v1

    .end local v1    # "weightsSize":I
    .restart local v18    # "weightsSize":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1164
    :goto_1d8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_206

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v21, v3

    .end local v3    # "iterator":Ljava/util/Iterator;
    .local v21, "iterator":Ljava/util/Iterator;
    move-object/from16 v3, v19

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v1

    .line 1166
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v3, v21

    goto :goto_1d8

    .line 1164
    .end local v21    # "iterator":Ljava/util/Iterator;
    .restart local v3    # "iterator":Ljava/util/Iterator;
    :cond_206
    move-object/from16 v21, v3

    .end local v3    # "iterator":Ljava/util/Iterator;
    .restart local v21    # "iterator":Ljava/util/Iterator;
    goto :goto_20b

    .line 1160
    .end local v18    # "weightsSize":I
    .end local v21    # "iterator":Ljava/util/Iterator;
    .restart local v1    # "weightsSize":I
    :cond_209
    move/from16 v18, v1

    .line 1171
    .end local v1    # "weightsSize":I
    :cond_20b
    :goto_20b
    if-eqz p3, :cond_257

    .line 1172
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    .line 1173
    .restart local v1    # "weightsSize":I
    if-eqz v1, :cond_255

    .line 1174
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1175
    .restart local v3    # "iterator":Ljava/util/Iterator;
    const-string v18, "\n   continuityWeights: "

    move-object/from16 v17, v18

    .line 1176
    move/from16 v18, v1

    .end local v1    # "weightsSize":I
    .restart local v18    # "weightsSize":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1177
    :goto_224
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_252

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 1179
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, v21

    goto :goto_224

    .line 1177
    :cond_252
    move-object/from16 v0, v17

    goto :goto_259

    .line 1173
    .end local v3    # "iterator":Ljava/util/Iterator;
    .end local v18    # "weightsSize":I
    .restart local v1    # "weightsSize":I
    :cond_255
    move/from16 v18, v1

    .line 1208
    .end local v1    # "weightsSize":I
    :cond_257
    move-object/from16 v0, v17

    .end local v17    # "element":Ljava/lang/String;
    .restart local v0    # "element":Ljava/lang/String;
    :goto_259
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_260
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_260} :catch_261

    .line 1211
    .end local v0    # "element":Ljava/lang/String;
    .end local v12    # "systemTimeZone":Ljava/util/TimeZone;
    .end local v13    # "offSetTime":J
    .end local v15    # "offSet":J
    goto :goto_26d

    .line 1209
    :catch_261
    move-exception v0

    goto :goto_26a

    .end local v22    # "filePosition":I
    .local v3, "filePosition":I
    :catch_263
    move-exception v0

    goto :goto_268

    :catch_265
    move-exception v0

    move-object/from16 v20, v2

    :goto_268
    move/from16 v22, v3

    .line 1210
    .end local v3    # "filePosition":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v22    # "filePosition":I
    :goto_26a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1117
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "userSerial":I
    .end local v9    # "time":J
    .end local v11    # "packageName":Ljava/lang/String;
    :goto_26d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v22

    goto/16 :goto_8d

    .end local v22    # "filePosition":I
    .restart local v3    # "filePosition":I
    :cond_277
    move/from16 v22, v3

    .line 1214
    .end local v3    # "filePosition":I
    .end local v7    # "i":I
    .restart local v22    # "filePosition":I
    if-eqz v4, :cond_281

    :try_start_27b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_281

    .line 1216
    :catch_27f
    move-exception v0

    goto :goto_287

    .line 1215
    :cond_281
    :goto_281
    if-eqz v5, :cond_286

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_286
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_286} :catch_27f

    .line 1217
    :cond_286
    nop

    .line 1218
    :goto_287
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 13
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1027
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_56

    .line 1028
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1029
    .local v1, "userSerial":I
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/BrightnessConfiguration;

    .line 1031
    .local v2, "config":Landroid/hardware/display/BrightnessConfiguration;
    const/4 v3, 0x0

    const-string v4, "brightness-configuration"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1032
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "user-serial"

    invoke-interface {p1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1033
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1034
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_37

    .line 1035
    const-string/jumbo v6, "package-name"

    invoke-interface {p1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1037
    :cond_37
    iget-object v6, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    const-wide/16 v7, -0x1

    invoke-virtual {v6, v1, v7, v8}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v9

    .line 1038
    .local v9, "timestamp":J
    cmp-long v6, v9, v7

    if-eqz v6, :cond_4d

    .line 1039
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "timestamp"

    invoke-interface {p1, v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1041
    :cond_4d
    invoke-virtual {v2, p1}, Landroid/hardware/display/BrightnessConfiguration;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1042
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1027
    .end local v1    # "userSerial":I
    .end local v2    # "config":Landroid/hardware/display/BrightnessConfiguration;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v9    # "timestamp":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1044
    .end local v0    # "i":I
    :cond_56
    return-void
.end method
