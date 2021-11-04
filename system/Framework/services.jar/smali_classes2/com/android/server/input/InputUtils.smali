.class Lcom/android/server/input/InputUtils;
.super Ljava/lang/Object;
.source "InputUtils.java"


# static fields
.field private static final PRODUCT_ID_BKB_KEYBOARD:I = 0x7021

.field private static final PRODUCT_ID_POGO_KEYBOARD:I = 0xa035

.field private static final PRODUCT_ID_TABS2_KEYBOARD:I = 0xa009

.field private static final VENDOR_ID_SAMSUNG:I = 0x4e8


# direct methods
.method constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isBkbKeyboard(II)Z
    .registers 3
    .param p0, "vendorId"    # I
    .param p1, "productId"    # I

    .line 129
    const/16 v0, 0x4e8

    if-ne p0, v0, :cond_a

    const/16 v0, 0x7021

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static isMisprintedKeyboard(IILjava/lang/String;)Z
    .registers 4
    .param p0, "vendorId"    # I
    .param p1, "productId"    # I
    .param p2, "deviceName"    # Ljava/lang/String;

    .line 121
    const/16 v0, 0x4e8

    if-ne p0, v0, :cond_9

    const v0, 0xa009

    if-eq p1, v0, :cond_11

    .line 122
    :cond_9
    const-string v0, "Tab S5e Book Cover Keyboard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 123
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method static isPogoKeyboard(IILjava/lang/String;)Z
    .registers 4
    .param p0, "vendorId"    # I
    .param p1, "productId"    # I
    .param p2, "deviceName"    # Ljava/lang/String;

    .line 113
    const/16 v0, 0x4e8

    if-ne p0, v0, :cond_9

    const v0, 0xa035

    if-eq p1, v0, :cond_11

    .line 114
    :cond_9
    const-string v0, "Tab S3 Book Cover Keyboard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 115
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 117
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method static sysfsExists(Ljava/lang/String;)Z
    .registers 2
    .param p0, "sysfs"    # Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static sysfsExists(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "prefixLog"    # Ljava/lang/String;

    .line 28
    invoke-static {p0}, Lcom/android/server/input/InputUtils;->sysfsExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 29
    const/4 v0, 0x1

    return v0

    .line 31
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", File not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method static sysfsPrint(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "prefixLog"    # Ljava/lang/String;

    .line 37
    const-string v0, "InputManager"

    const/4 v1, 0x0

    .line 39
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_34
    .catchall {:try_start_3 .. :try_end_29} :catchall_32

    .line 47
    nop

    .line 48
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 52
    goto :goto_30

    .line 50
    :catch_2e
    move-exception v0

    .line 53
    nop

    .line 54
    :goto_30
    const/4 v0, 0x1

    return v0

    .line 46
    :catchall_32
    move-exception v0

    goto :goto_54

    .line 41
    :catch_34
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Exception;
    :try_start_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception when printing value of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_32

    .line 44
    const/4 v0, 0x0

    .line 47
    if-eqz v1, :cond_52

    .line 48
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_52

    .line 50
    :catch_50
    move-exception v3

    goto :goto_53

    .line 52
    :cond_52
    :goto_52
    nop

    .line 44
    :goto_53
    return v0

    .line 47
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_54
    if-eqz v1, :cond_5c

    .line 48
    :try_start_56
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5c

    .line 50
    :catch_5a
    move-exception v2

    goto :goto_5d

    .line 52
    :cond_5c
    :goto_5c
    nop

    .line 53
    :goto_5d
    throw v0
.end method

.method static sysfsReadInt(Ljava/lang/String;I)I
    .registers 9
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 84
    const-string v0, "Failed to read int from "

    const-string v1, "InputManager"

    const/4 v2, 0x0

    .line 85
    .local v2, "br":Ljava/io/BufferedReader;
    move v3, p1

    .line 88
    .local v3, "result":I
    :try_start_6
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    .line 89
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1e} :catch_64
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_1e} :catch_46
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_28
    .catchall {:try_start_6 .. :try_end_1e} :catchall_26

    move v3, v0

    .line 101
    nop

    .line 102
    :try_start_20
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    .line 106
    :cond_23
    :goto_23
    goto :goto_82

    .line 104
    :catch_24
    move-exception v0

    .line 107
    goto :goto_82

    .line 100
    :catchall_26
    move-exception v0

    goto :goto_83

    .line 96
    :catch_28
    move-exception v4

    .line 97
    .local v4, "e":Ljava/lang/Exception;
    :try_start_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason: Exception"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_26

    .line 101
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_23

    .line 102
    :try_start_42
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_24

    goto :goto_23

    .line 93
    :catch_46
    move-exception v4

    .line 94
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason: NumberFormatException"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_47 .. :try_end_5e} :catchall_26

    .line 101
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    if-eqz v2, :cond_23

    .line 102
    :try_start_60
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_24

    goto :goto_23

    .line 90
    :catch_64
    move-exception v4

    .line 91
    .local v4, "e":Ljava/io/IOException;
    :try_start_65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason: IOException"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_65 .. :try_end_7c} :catchall_26

    .line 101
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_23

    .line 102
    :try_start_7e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_24

    goto :goto_23

    .line 108
    :goto_82
    return v3

    .line 101
    :goto_83
    if-eqz v2, :cond_8b

    .line 102
    :try_start_85
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_8b

    .line 104
    :catch_89
    move-exception v1

    goto :goto_8c

    .line 106
    :cond_8b
    :goto_8b
    nop

    .line 107
    :goto_8c
    throw v0
.end method

.method static sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 59
    const-string v0, " to "

    const-string v1, "Failed to write "

    const-string v2, "InputManager"

    const/4 v3, 0x0

    .line 60
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 62
    .local v4, "result":Z
    :try_start_8
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1a} :catch_48
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_24
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    .line 64
    const/4 v4, 0x1

    .line 73
    nop

    .line 74
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 78
    :cond_1f
    :goto_1f
    goto :goto_6c

    .line 76
    :catch_20
    move-exception v0

    .line 79
    goto :goto_6c

    .line 72
    :catchall_22
    move-exception v0

    goto :goto_6d

    .line 68
    :catch_24
    move-exception v5

    .line 69
    .local v5, "e":Ljava/lang/Exception;
    :try_start_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason: Exception"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_25 .. :try_end_42} :catchall_22

    .line 73
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1f

    .line 74
    :try_start_44
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_20

    goto :goto_1f

    .line 65
    :catch_48
    move-exception v5

    .line 66
    .local v5, "e":Ljava/io/IOException;
    :try_start_49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason: IOException"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_49 .. :try_end_66} :catchall_22

    .line 73
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1f

    .line 74
    :try_start_68
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_20

    goto :goto_1f

    .line 80
    :goto_6c
    return v4

    .line 73
    :goto_6d
    if-eqz v3, :cond_75

    .line 74
    :try_start_6f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_75

    .line 76
    :catch_73
    move-exception v1

    goto :goto_76

    .line 78
    :cond_75
    :goto_75
    nop

    .line 79
    :goto_76
    throw v0
.end method
