.class public Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;
.super Ljava/lang/Object;
.source "SemInputDeviceHqmData.java"


# static fields
.field private static final Case1:I = 0x1

.field private static final Case2:I = 0x2

.field private static final PATH_TAAS_DATA:Ljava/lang/String; = "/mnt/vendor/efs/taas/taas"

.field private static final TAG:Ljava/lang/String; = "SemInputDeviceHqmData"

.field private static final TSP_CASE1_COUNT:Ljava/lang/String; = "CAS1"

.field private static final TSP_CASE2_COUNT:Ljava/lang/String; = "CAS2"


# instance fields
.field private mCase1Count:I

.field private mCase2Count:I

.field private mLoggingData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    .line 21
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    .line 53
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    .line 54
    return-void
.end method

.method public get(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public increaseCount(I)V
    .registers 13
    .param p1, "usage"    # I

    .line 58
    const-string v0, "CAS2"

    const-string v1, "CAS1"

    const-string v2, "SemInputDeviceHqmData"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const v5, 0x7fffffff

    :try_start_b
    const-string v6, ""
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_d} :catch_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_d} :catch_af

    .line 59
    .local v6, "tempStr":Ljava/lang/String;
    const-string v7, "/mnt/vendor/efs/taas/taas"

    const-string v8, " "

    if-eq p1, v4, :cond_4e

    if-eq p1, v3, :cond_17

    goto/16 :goto_85

    .line 67
    :cond_17
    :try_start_17
    iget v9, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    if-lt v9, v5, :cond_1d

    move v9, v5

    goto :goto_20

    :cond_1d
    iget v9, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    add-int/2addr v9, v4

    :goto_20
    iput v9, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    .line 68
    iget-object v10, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 70
    invoke-static {v7, v6}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    goto :goto_85

    .line 61
    :cond_4e
    iget v9, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    if-lt v9, v5, :cond_54

    move v9, v5

    goto :goto_57

    :cond_54
    iget v9, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    add-int/2addr v9, v4

    :goto_57
    iput v9, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    .line 62
    iget-object v10, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 64
    invoke-static {v7, v6}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    nop

    .line 75
    :goto_85
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[sec_input]increaseCount mCase1Count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mCase2Count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "tempStr:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_ad} :catch_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_ad} :catch_af

    .line 92
    nop

    .end local v6    # "tempStr":Ljava/lang/String;
    goto :goto_10e

    .line 90
    :catch_af
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sec_input] Exception"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10e

    .line 76
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_c9
    move-exception v6

    .line 77
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[sec_input] Exception in increaseCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eq p1, v4, :cond_fa

    if-eq p1, v3, :cond_e7

    goto :goto_10d

    .line 84
    :cond_e7
    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    if-lt v1, v5, :cond_ec

    goto :goto_ee

    :cond_ec
    add-int/lit8 v5, v1, 0x1

    :goto_ee
    iput v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    .line 85
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    goto :goto_10d

    .line 80
    :cond_fa
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    if-lt v0, v5, :cond_ff

    goto :goto_101

    :cond_ff
    add-int/lit8 v5, v0, 0x1

    :goto_101
    iput v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    .line 81
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    nop

    .line 92
    .end local v6    # "e":Ljava/io/IOException;
    :goto_10d
    nop

    .line 93
    :goto_10e
    return-void
.end method

.method public init()V
    .registers 8

    .line 26
    const-string v0, "/mnt/vendor/efs/taas/taas"

    const-string v1, "SemInputDeviceHqmData"

    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v2, "casCount":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 29
    const-string v3, "0 0"

    invoke-static {v0, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_bb

    .line 32
    :cond_1c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "casStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_82

    .line 34
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 35
    .local v3, "stk":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    .line 36
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    .line 37
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    const-string v5, "CAS1"

    iget v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    const-string v5, "CAS2"

    iget v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sec_input]init mCase1Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase1Count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mCase2Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCase2Count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    nop

    .end local v3    # "stk":Ljava/util/StringTokenizer;
    goto :goto_bb

    .line 41
    :cond_82
    const-string v3, "[sec_input]init not is Empty"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_87} :catch_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_87} :catch_88

    goto :goto_bb

    .line 46
    .end local v0    # "casStr":Ljava/lang/String;
    .end local v2    # "casCount":Ljava/io/File;
    :catch_88
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sec_input] NumberFormatException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    .line 44
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_a2
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sec_input] IOException in increaseCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v0    # "e":Ljava/io/IOException;
    :cond_bb
    :goto_bb
    nop

    .line 49
    :goto_bc
    return-void
.end method
