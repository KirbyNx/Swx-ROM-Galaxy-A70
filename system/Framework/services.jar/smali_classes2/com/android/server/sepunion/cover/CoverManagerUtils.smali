.class final Lcom/android/server/sepunion/cover/CoverManagerUtils;
.super Ljava/lang/Object;
.source "CoverManagerUtils.java"


# static fields
.field private static BOOSTING_TIMEOUT:I = 0x0

.field static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field static final PATH_FILE_COVER_DETECT:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

.field static final PATH_FILE_COVER_MODEL:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

.field static final PATH_FILE_COVER_SERIAL_NUMBER:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_sn"

.field static final PATH_FILE_COVER_TYPE:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_id"

.field static final PATH_FILE_COVER_VERIFY:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_verify_mac"

.field static final PATH_FILE_COVER_VERIFY_FAKE:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_cf"

.field private static final SETTINGS_KEY_AUTO_SCREEN_ON:Ljava/lang/String; = "auto_screen_on"

.field private static final SETTINGS_VALUE_AUTO_SCREEN_ON_DISABLED:I = 0x0

.field private static final SETTINGS_VALUE_AUTO_SCREEN_ON_ENABLED:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field static final WIRELESS_CHARGE_COVER_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/led_cover"

.field private static final WIRELESS_CHARGE_SUPPORT_PATH:Ljava/lang/String; = "/sys/class/power_supply/wireless/present"

.field static final isSupportWirelessCharge:Z

.field private static sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private static sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private static sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 51
    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 52
    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 53
    const/16 v0, 0x7d0

    sput v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    .line 58
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isSupportWirelessCharge()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isSupportWirelessCharge:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fileWriteInt(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "out":Ljava/io/FileOutputStream;
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileWriteInt to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3c

    if-eq p1, v1, :cond_3c

    .line 310
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return v2

    .line 315
    :cond_3c
    :try_start_3c
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_46} :catch_59
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_46} :catch_57

    move-object v0, v3

    .line 319
    nop

    .line 320
    :try_start_48
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 321
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 322
    return v1

    .line 323
    :catch_57
    move-exception v1

    goto :goto_5e

    .line 316
    :catch_59
    move-exception v1

    .line 317
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_5d} :catch_57

    .line 318
    return v2

    .line 324
    .local v1, "e":Ljava/io/IOException;
    :goto_5e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 326
    :try_start_61
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_66

    .line 330
    nop

    .line 331
    return v2

    .line 327
    :catch_66
    move-exception v3

    .line 328
    .local v3, "err":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    return v2
.end method

.method static getValueFromSysFS(Ljava/lang/String;I)I
    .registers 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 65
    move v0, p1

    .line 66
    .local v0, "value":I
    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, "reader":Ljava/io/FileReader;
    :try_start_8
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 70
    const/16 v2, 0xf

    new-array v2, v2, [C

    .line 71
    .local v2, "buf":[C
    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 72
    .local v3, "n":I
    if-lez v3, :cond_25

    .line 73
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    add-int/lit8 v6, v3, -0x1

    invoke-direct {v4, v2, v5, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_24} :catch_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_24} :catch_35
    .catchall {:try_start_8 .. :try_end_24} :catchall_2c

    move v0, v4

    .line 80
    .end local v2    # "buf":[C
    .end local v3    # "n":I
    :cond_25
    nop

    .line 82
    :try_start_26
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 84
    :goto_29
    goto :goto_45

    .line 83
    :catch_2a
    move-exception v2

    goto :goto_29

    .line 80
    :catchall_2c
    move-exception v2

    if-eqz v1, :cond_34

    .line 82
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    .line 84
    goto :goto_34

    .line 83
    :catch_33
    move-exception v3

    .line 86
    :cond_34
    :goto_34
    throw v2

    .line 77
    :catch_35
    move-exception v2

    .line 78
    .local v2, "ex":Ljava/lang/NumberFormatException;
    move v0, p1

    .line 80
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    if-eqz v1, :cond_45

    .line 82
    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_29

    .line 75
    :catch_3d
    move-exception v2

    .line 76
    .local v2, "ex":Ljava/io/IOException;
    move v0, p1

    .line 80
    .end local v2    # "ex":Ljava/io/IOException;
    if-eqz v1, :cond_45

    .line 82
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_44} :catch_2a

    goto :goto_29

    .line 89
    .end local v1    # "reader":Ljava/io/FileReader;
    :cond_45
    :goto_45
    sget-boolean v1, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v1, :cond_60

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getValueFromSysFS() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_60
    return v0
.end method

.method static getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 94
    move-object v0, p1

    .line 95
    .local v0, "value":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, "reader":Ljava/io/FileReader;
    :try_start_8
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 99
    const/16 v2, 0xf

    new-array v2, v2, [C

    .line 100
    .local v2, "buf":[C
    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 101
    .local v3, "n":I
    if-lez v3, :cond_21

    .line 102
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    add-int/lit8 v6, v3, -0x1

    invoke-direct {v4, v2, v5, v6}, Ljava/lang/String;-><init>([CII)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_20} :catch_39
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_20} :catch_31
    .catchall {:try_start_8 .. :try_end_20} :catchall_28

    move-object v0, v4

    .line 109
    .end local v2    # "buf":[C
    .end local v3    # "n":I
    :cond_21
    nop

    .line 111
    :try_start_22
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    .line 113
    :goto_25
    goto :goto_41

    .line 112
    :catch_26
    move-exception v2

    goto :goto_25

    .line 109
    :catchall_28
    move-exception v2

    if-eqz v1, :cond_30

    .line 111
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 113
    goto :goto_30

    .line 112
    :catch_2f
    move-exception v3

    .line 115
    :cond_30
    :goto_30
    throw v2

    .line 106
    :catch_31
    move-exception v2

    .line 107
    .local v2, "ex":Ljava/lang/NumberFormatException;
    move-object v0, p1

    .line 109
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    if-eqz v1, :cond_41

    .line 111
    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_25

    .line 104
    :catch_39
    move-exception v2

    .line 105
    .local v2, "ex":Ljava/io/IOException;
    move-object v0, p1

    .line 109
    .end local v2    # "ex":Ljava/io/IOException;
    if-eqz v1, :cond_41

    .line 111
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_40} :catch_26

    goto :goto_25

    .line 118
    .end local v1    # "reader":Ljava/io/FileReader;
    :cond_41
    :goto_41
    sget-boolean v1, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v1, :cond_5c

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getValueFromSysFS() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_5c
    return-object v0
.end method

.method static isAutoScreenOnDisabled(Landroid/content/ContentResolver;)Z
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 336
    const-string v0, "auto_screen_on"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method static isBackCover(Lcom/samsung/android/cover/CoverState;)Z
    .registers 3
    .param p0, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    .line 165
    .local v0, "coverType":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1b

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1b

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1b

    const/16 v1, 0xc

    if-ne v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v1, 0x1

    :goto_1c
    return v1
.end method

.method static isClearCover(Lcom/samsung/android/cover/CoverState;)Z
    .registers 3
    .param p0, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    .line 142
    .local v0, "coverType":I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    const/16 v1, 0xf

    if-eq v0, v1, :cond_13

    const/16 v1, 0x10

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method static isCoverTypeForWirelessCharger(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 148
    const/4 v0, 0x7

    if-eq p0, v0, :cond_18

    const/16 v0, 0x8

    if-eq p0, v0, :cond_18

    const/16 v0, 0xe

    if-eq p0, v0, :cond_18

    const/16 v0, 0xf

    if-eq p0, v0, :cond_18

    const/16 v0, 0x10

    if-eq p0, v0, :cond_18

    if-nez p0, :cond_16

    goto :goto_18

    .line 155
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_18
    :goto_18
    const/4 v0, 0x1

    return v0
.end method

.method static isFileExists(Ljava/lang/String;)Z
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 124
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method static isFriendsCover(Lcom/samsung/android/cover/CoverState;)Z
    .registers 4
    .param p0, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getFriendsType()I

    move-result v0

    .line 131
    .local v0, "friendsType":I
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return v1
.end method

.method static isSamsungCover(Lcom/samsung/android/cover/CoverState;)Z
    .registers 4
    .param p0, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    .line 136
    .local v0, "coverType":I
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getFriendsType()I

    move-result v1

    .line 137
    .local v1, "friendsType":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    if-nez v1, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    return v2
.end method

.method private static isSupportWirelessCharge()Z
    .registers 4

    .line 290
    const-string v0, "/sys/class/power_supply/wireless/present"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "wcType":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 293
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v3, "Feature for Wireless Charge is NOT existed"

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return v2

    .line 297
    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 298
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v3, "Wireless Charge is NOT Supported"

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v2

    .line 302
    :cond_25
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wireless Charge is Supported: Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v1, 0x1

    return v1
.end method

.method static needsCPUBoostCover(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 173
    const/16 v0, 0x8

    if-eq p0, v0, :cond_e

    const/16 v0, 0xf

    if-eq p0, v0, :cond_e

    const/16 v0, 0x10

    if-eq p0, v0, :cond_e

    .line 179
    const/4 v0, 0x0

    return v0

    .line 177
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method static performCPUBoostCover(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 183
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "performCPUBoostCover called"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_c
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 187
    const/16 v0, 0xc

    const-string v2, "COVER_BOOSTER"

    invoke-static {p0, v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 188
    if-eqz v0, :cond_2a

    .line 189
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    .line 190
    .local v0, "supportedCPUFreqTable":[I
    if-eqz v0, :cond_2a

    .line 191
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 195
    .end local v0    # "supportedCPUFreqTable":[I
    :cond_2a
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_3d

    .line 197
    :try_start_2e
    sget v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_34

    .line 200
    goto :goto_3d

    .line 198
    :catch_34
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sCoverCpuBooster.acquire is failed"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3d
    :goto_3d
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_62

    .line 205
    const/16 v0, 0xe

    const-string v2, "COVER_CORE_BOOSTER"

    invoke-static {p0, v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 207
    if-eqz v0, :cond_62

    .line 208
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    .line 209
    .local v0, "coreNumTable":[I
    if-eqz v0, :cond_62

    array-length v2, v0

    if-lez v2, :cond_62

    .line 210
    aget v2, v0, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_62

    .line 211
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 216
    .end local v0    # "coreNumTable":[I
    :cond_62
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_75

    .line 218
    :try_start_66
    sget v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6b} :catch_6c

    .line 221
    goto :goto_75

    .line 219
    :catch_6c
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sCoverCoreNumLockHelper.acquire is failed"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_75
    :goto_75
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_95

    .line 226
    const/16 v0, 0x13

    const-string v2, "COVER_BUS_BOOSTER"

    invoke-static {p0, v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 227
    if-eqz v0, :cond_95

    .line 228
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    .line 229
    .local v0, "supportedBUSFreqTable":[I
    if-eqz v0, :cond_95

    array-length v2, v0

    if-lez v2, :cond_95

    .line 230
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 235
    .end local v0    # "supportedBUSFreqTable":[I
    :cond_95
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_a8

    .line 237
    :try_start_99
    sget v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9e} :catch_9f

    .line 240
    goto :goto_a8

    .line 238
    :catch_9f
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sCoverBusBooster.acquire is failed"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a8
    :goto_a8
    return-void
.end method

.method static sendCoverInformationToAgent(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serial"    # Ljava/lang/String;
    .param p2, "isBoot"    # Z

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "serialNumber":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 271
    move-object v0, p1

    goto :goto_14

    .line 273
    :cond_d
    const/4 v1, 0x0

    const-string v2, "/sys/devices/w1_bus_master1/w1_master_check_sn"

    invoke-static {v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_14
    if-eqz v0, :cond_3f

    .line 276
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.intent.action.COVER_ATTACHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.soagent"

    const-string v3, "com.sec.android.soagent.receiver.PhoneCoverReceiver"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string/jumbo v2, "isBoot"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    const-string/jumbo v2, "serialNumber"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permission.COVER"

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 282
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendCoverInformationToAgent : broadcast !!"

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3f
    sget-boolean v1, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v1, :cond_5a

    .line 285
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCoverInformationToAgent : serialNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_5a
    return-void
.end method

.method static showRuggedizedPopup(Landroid/content/Context;ZZ)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attached"    # Z
    .param p2, "isBoot"    # Z

    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.SviewCover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/Feature;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 249
    const/4 v2, -0x1

    const-string v3, "/sys/bus/w1/devices/w1_bus_master1/w1_master_cf"

    invoke-static {v3, v2}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    .line 250
    .local v2, "verified":Z
    :goto_22
    if-nez v2, :cond_29

    .line 251
    const-string v3, "com.sec.android.app.popupuireceiver.SviewCoverFake"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    :cond_29
    const-string/jumbo v1, "verified"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    .end local v2    # "verified":Z
    :cond_2f
    const-string/jumbo v1, "isBoot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    const-string v1, "attached"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    :try_start_3f
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_44
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3f .. :try_end_44} :catch_45

    .line 265
    goto :goto_4e

    .line 263
    :catch_45
    move-exception v1

    .line 264
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showRuggedizedPopup : ActivityNotFoundException !!"

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    :goto_4e
    return-void
.end method
