.class Lcom/android/server/input/ControlWakeKey;
.super Ljava/lang/Object;
.source "ControlWakeKey.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultWakeKey:Ljava/lang/String;

.field private mWakeKeyFilePath:Ljava/lang/String;

.field private mWakeKeyFilePath1:Ljava/lang/String;

.field private mWakeKeyRefCount:Ljava/util/HashMap;
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
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-string v0, "InputManager.ControlWakeKey"

    sput-object v0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 27
    const-string v0, "/sys/class/sec/sec_key/wakeup_keys"

    iput-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    .line 28
    const-string v0, "/sys/power/volkey_wakeup"

    iput-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyFilePath1:Ljava/lang/String;

    .line 29
    const-string v0, "102,116,172"

    iput-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/android/server/input/ControlWakeKey;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 36
    iget-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 37
    sget-object v0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeWakeKeyRefCount in constructor returns false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void

    .line 40
    :cond_2d
    invoke-direct {p0}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyString(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private makeWakeKeyRefCount(ZLjava/lang/String;)Z
    .registers 14
    .param p1, "isPut"    # Z
    .param p2, "keycodes"    # Ljava/lang/String;

    .line 74
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "splitted_keycodes":[Ljava/lang/String;
    const-string/jumbo v1, "mWakeKeyRefCount("

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_55

    .line 77
    array-length v4, v0

    :goto_e
    if-ge v2, v4, :cond_ab

    aget-object v5, v0, v2

    .line 78
    .local v5, "splitted_keycode":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "keycode":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 81
    iget-object v7, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v3

    .local v7, "count":I
    goto :goto_2d

    .line 83
    .end local v7    # "count":I
    :cond_2c
    const/4 v7, 0x1

    .line 85
    .restart local v7    # "count":I
    :goto_2d
    iget-object v8, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v8, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") is increased: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v5    # "splitted_keycode":Ljava/lang/String;
    .end local v6    # "keycode":Ljava/lang/String;
    .end local v7    # "count":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 89
    :cond_55
    array-length v4, v0

    :goto_56
    if-ge v2, v4, :cond_ab

    aget-object v5, v0, v2

    .line 90
    .restart local v5    # "splitted_keycode":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 91
    .restart local v6    # "keycode":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 92
    iget-object v7, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v7, v3

    .line 93
    .restart local v7    # "count":I
    if-gtz v7, :cond_83

    .line 94
    iget-object v8, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v8, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "keycode is removed"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 97
    :cond_83
    iget-object v8, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v8, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") is decreased: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v5    # "splitted_keycode":Ljava/lang/String;
    .end local v6    # "keycode":Ljava/lang/String;
    .end local v7    # "count":I
    :cond_a8
    :goto_a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 103
    :cond_ab
    return v3
.end method

.method private makeWakeKeyString()Ljava/lang/String;
    .registers 7

    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v0, "buff":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    .line 109
    iget-object v1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 110
    .local v1, "keycodes":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 111
    array-length v2, v1

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_2f

    aget-object v4, v1, v3

    .line 112
    .local v4, "keycode":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    .end local v4    # "keycode":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 114
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 115
    sget-object v2, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keycodes in makeWakeKeyString is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v1    # "keycodes":[Ljava/lang/String;
    goto :goto_5c

    .line 117
    :cond_54
    sget-object v1, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mWakeKeyRefCount is empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_5c
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private writeWakeKeyString(Ljava/lang/String;)V
    .registers 7
    .param p1, "keycodes"    # Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "wakekeyfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_22

    .line 171
    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 172
    sget-object v1, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "wakekeyfile is created"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_19

    .line 175
    goto :goto_22

    .line 173
    :catch_19
    move-exception v1

    .line 174
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "wakekeyfile.createNewFile() is failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v1    # "e":Ljava/io/IOException;
    :cond_22
    :goto_22
    const/4 v1, 0x0

    .line 180
    .local v1, "fosWakeKey":Ljava/io/FileOutputStream;
    :try_start_23
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 181
    sget-object v2, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string v3, "FileOutputStream is passed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_30} :catch_31

    .line 184
    goto :goto_39

    .line 182
    :catch_31
    move-exception v2

    .line 183
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string v4, "FileOutputStream is failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_39
    if-eqz v1, :cond_53

    .line 188
    :try_start_3b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 189
    sget-object v2, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string v3, "fosWakeKey writing is passed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_49} :catch_4a

    goto :goto_53

    .line 191
    :catch_4a
    move-exception v2

    .line 192
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string v4, "fosWakeKey writing is failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 193
    .end local v2    # "e":Ljava/io/IOException;
    :cond_53
    :goto_53
    nop

    .line 196
    :goto_54
    if-eqz v1, :cond_6b

    .line 197
    :try_start_56
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 198
    const/4 v1, 0x0

    .line 199
    sget-object v2, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string v3, "closing fosWakeKey is passed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_61} :catch_62

    goto :goto_6b

    .line 201
    :catch_62
    move-exception v2

    .line 202
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string v4, "closing fosWakeKey is failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 203
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6b
    :goto_6b
    nop

    .line 204
    :goto_6c
    return-void
.end method

.method private writeWakeKeyVolume(Z)V
    .registers 8
    .param p1, "VolumeKeyFound"    # Z

    .line 125
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 126
    .local v0, "volume_write":Ljava/lang/String;
    if-eqz p1, :cond_a

    const-string v1, "1"

    goto :goto_c

    :cond_a
    const-string v1, "0"

    :goto_c
    move-object v0, v1

    .line 127
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyFilePath1:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "wakekeyfilevolume":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 131
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 132
    sget-object v2, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "wakekeyfilevolume is created"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_26

    .line 135
    goto :goto_2f

    .line 133
    :catch_26
    move-exception v2

    .line 134
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "wakekeyfilevolume.createNewFile() is failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2f
    :goto_2f
    const/4 v2, 0x0

    .line 140
    .local v2, "fosWakeKeyvolume":Ljava/io/FileOutputStream;
    :try_start_30
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 141
    sget-object v3, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string v4, "FileOutputStreamvolume is passed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_3d} :catch_3e

    .line 144
    goto :goto_46

    .line 142
    :catch_3e
    move-exception v3

    .line 143
    .local v3, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string v5, "FileOutputStreamvolume is failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_46
    if-eqz v2, :cond_60

    .line 148
    :try_start_48
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 149
    sget-object v3, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string v4, "fosWakeKeyvolume writing is passed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_56} :catch_57

    goto :goto_60

    .line 151
    :catch_57
    move-exception v3

    .line 152
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string v5, "fosWakeKeyvolume writing is failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 153
    .end local v3    # "e":Ljava/io/IOException;
    :cond_60
    :goto_60
    nop

    .line 156
    :goto_61
    if-eqz v2, :cond_78

    .line 157
    :try_start_63
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 158
    const/4 v2, 0x0

    .line 159
    sget-object v3, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string v4, "closing fosWakeKeyvolume is passed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6e} :catch_6f

    goto :goto_78

    .line 161
    :catch_6f
    move-exception v3

    .line 162
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string v5, "closing fosWakeKeyvolume is failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 163
    .end local v3    # "e":Ljava/io/IOException;
    :cond_78
    :goto_78
    nop

    .line 165
    :goto_79
    return-void
.end method


# virtual methods
.method setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 14
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "isPut"    # Z
    .param p3, "keycodes"    # Ljava/lang/String;

    .line 207
    const-string v0, "WAKEKEY"

    .line 209
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "null"

    const-string v3, "empty"

    if-eqz v1, :cond_27

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packagename: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move-object v2, v3

    :goto_1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 214
    :cond_27
    iget-object v1, p0, Lcom/android/server/input/ControlWakeKey;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 215
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_36

    .line 216
    const-string/jumbo v2, "pm is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void

    .line 220
    :cond_36
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "packages":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 222
    .local v5, "uidhaspackage":Z
    if-eqz v4, :cond_e6

    array-length v6, v4

    if-nez v6, :cond_46

    goto/16 :goto_e6

    .line 227
    :cond_46
    const/4 v2, 0x0

    :try_start_47
    array-length v3, v4

    move v6, v2

    :goto_49
    if-ge v6, v3, :cond_76

    aget-object v7, v4, v6

    .line 228
    .local v7, "pac":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "packagename:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", package:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_6e
    .catch Ljava/lang/NullPointerException; {:try_start_47 .. :try_end_6e} :catch_77

    if-eqz v8, :cond_73

    .line 230
    const/4 v3, 0x1

    .line 231
    .end local v5    # "uidhaspackage":Z
    .local v3, "uidhaspackage":Z
    move v5, v3

    goto :goto_76

    .line 227
    .end local v3    # "uidhaspackage":Z
    .end local v7    # "pac":Ljava/lang/String;
    .restart local v5    # "uidhaspackage":Z
    :cond_73
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 236
    :cond_76
    :goto_76
    goto :goto_7b

    .line 234
    :catch_77
    move-exception v3

    .line 235
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 239
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_7b
    const/4 v3, 0x0

    .line 241
    .local v3, "appinfo":Landroid/content/pm/ApplicationInfo;
    :try_start_7c
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object v3, v2

    .line 242
    if-nez v3, :cond_89

    .line 243
    const-string v2, "appinfo is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7c .. :try_end_88} :catch_df

    .line 244
    return-void

    .line 249
    :cond_89
    nop

    .line 251
    if-eqz v5, :cond_92

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v2

    if-nez v2, :cond_b9

    .line 252
    :cond_92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uidhaspackage is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", appinfo.privateFlags is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v6, 0x3e8

    if-ne v2, v6, :cond_c2

    .line 259
    :cond_b9
    :try_start_b9
    invoke-virtual {p0, p2, p3}, Lcom/android/server/input/ControlWakeKey;->setWakeKeyDynamicallyInternal(ZLjava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/NullPointerException; {:try_start_b9 .. :try_end_bc} :catch_bd

    .line 262
    goto :goto_c1

    .line 260
    :catch_bd
    move-exception v2

    .line 261
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 263
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_c1
    return-void

    .line 254
    :cond_c2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "only system app can use this method, but "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not system app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :catch_df
    move-exception v2

    .line 247
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "NameNotFoundException is occured"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 223
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :cond_e6
    :goto_e6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packages: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_f4

    goto :goto_f5

    :cond_f4
    move-object v2, v3

    :goto_f5
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method setWakeKeyDynamicallyInternal(ZLjava/lang/String;)V
    .registers 10
    .param p1, "isPut"    # Z
    .param p2, "keycodes"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "input keycodes is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isPut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 47
    sget-object v0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keycodes in setWakeKeyDynamically is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_38

    const-string/jumbo v2, "null"

    goto :goto_3a

    :cond_38
    const-string v2, "empty"

    :goto_3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 51
    :cond_45
    iget-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 52
    iget-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)Z

    .line 55
    :cond_53
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 56
    sget-object v0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeWakeKeyRefCount in setWakeKeyDynamically returns false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 60
    :cond_62
    const/4 v0, 0x0

    .line 61
    .local v0, "VolumeKeyFound":Z
    invoke-direct {p0}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "KeycodesReference":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "splitted_keycodes":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_6f
    if-ge v4, v3, :cond_89

    aget-object v5, v2, v4

    .line 64
    .local v5, "x":Ljava/lang/String;
    const-string v6, "114"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_87

    const-string v6, "115"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    goto :goto_87

    .line 63
    .end local v5    # "x":Ljava/lang/String;
    :cond_84
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 65
    .restart local v5    # "x":Ljava/lang/String;
    :cond_87
    :goto_87
    const/4 v0, 0x1

    .line 66
    nop

    .line 69
    .end local v5    # "x":Ljava/lang/String;
    :cond_89
    invoke-direct {p0, v0}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyVolume(Z)V

    .line 70
    invoke-direct {p0, v1}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyString(Ljava/lang/String;)V

    .line 71
    return-void
.end method
