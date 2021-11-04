.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarSystemUtil"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateSysfsGripDisable(Z)V
    .registers 6
    .param p0, "bDisable"    # Z

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, "fos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_57

    .line 155
    :cond_15
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSysfsGripDisable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_33} :catch_77
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_33} :catch_6d
    .catchall {:try_start_1 .. :try_end_33} :catchall_6b

    move-object v0, v2

    .line 157
    const-string v2, "UTF-8"

    if-eqz p0, :cond_43

    .line 158
    :try_start_38
    const-string/jumbo v3, "set_grip_detection,0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4d

    .line 160
    :cond_43
    const-string/jumbo v3, "set_grip_detection,1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 162
    :goto_4d
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_50} :catch_77
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_50} :catch_6d
    .catchall {:try_start_38 .. :try_end_50} :catchall_6b

    .line 169
    .end local v1    # "file":Ljava/io/File;
    nop

    .line 170
    :try_start_51
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    .line 173
    :cond_54
    :goto_54
    goto :goto_81

    .line 172
    :catch_55
    move-exception v1

    .line 174
    goto :goto_81

    .line 152
    .restart local v1    # "file":Ljava/io/File;
    :cond_57
    :goto_57
    :try_start_57
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "updateSysfsGripDisable : file did not exists or canWrite"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_61} :catch_77
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_61} :catch_6d
    .catchall {:try_start_57 .. :try_end_61} :catchall_6b

    .line 169
    if-eqz v0, :cond_69

    .line 170
    :try_start_63
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_69

    .line 172
    :catch_67
    move-exception v2

    goto :goto_6a

    .line 173
    :cond_69
    :goto_69
    nop

    .line 153
    :goto_6a
    return-void

    .line 168
    .end local v1    # "file":Ljava/io/File;
    :catchall_6b
    move-exception v1

    goto :goto_82

    .line 165
    :catch_6d
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/IOException;
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_6b

    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_54

    .line 170
    :try_start_73
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_55

    goto :goto_54

    .line 163
    :catch_77
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_78
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_6b

    .line 169
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_54

    .line 170
    :try_start_7d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_55

    goto :goto_54

    .line 175
    :goto_81
    return-void

    .line 169
    :goto_82
    if-eqz v0, :cond_8a

    .line 170
    :try_start_84
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8a

    .line 172
    :catch_88
    move-exception v2

    goto :goto_8b

    .line 173
    :cond_8a
    :goto_8a
    nop

    .line 174
    :goto_8b
    throw v1
.end method

.method public static updateWakeupArea(I)V
    .registers 5
    .param p0, "area"    # I

    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, "fos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_3f

    .line 124
    :cond_15
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1a} :catch_55
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_4b
    .catchall {:try_start_1 .. :try_end_1a} :catchall_49

    move-object v0, v2

    .line 125
    const/4 v2, 0x1

    const-string v3, "UTF-8"

    if-ne p0, v2, :cond_2b

    .line 127
    :try_start_20
    const-string/jumbo v2, "select_wakeful_edge,0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_35

    .line 130
    :cond_2b
    const-string/jumbo v2, "select_wakeful_edge,1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 132
    :goto_35
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_38} :catch_55
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_38} :catch_4b
    .catchall {:try_start_20 .. :try_end_38} :catchall_49

    .line 139
    .end local v1    # "file":Ljava/io/File;
    nop

    .line 140
    :try_start_39
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 143
    :cond_3c
    :goto_3c
    goto :goto_5f

    .line 142
    :catch_3d
    move-exception v1

    .line 144
    goto :goto_5f

    .line 139
    .restart local v1    # "file":Ljava/io/File;
    :cond_3f
    :goto_3f
    if-eqz v0, :cond_47

    .line 140
    :try_start_41
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_47

    .line 142
    :catch_45
    move-exception v2

    goto :goto_48

    .line 143
    :cond_47
    :goto_47
    nop

    .line 122
    :goto_48
    return-void

    .line 138
    .end local v1    # "file":Ljava/io/File;
    :catchall_49
    move-exception v1

    goto :goto_60

    .line 135
    :catch_4b
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_49

    .line 139
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_3c

    .line 140
    :try_start_51
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_3d

    goto :goto_3c

    .line 133
    :catch_55
    move-exception v1

    .line 134
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_56
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_49

    .line 139
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_3c

    .line 140
    :try_start_5b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_3d

    goto :goto_3c

    .line 145
    :goto_5f
    return-void

    .line 139
    :goto_60
    if-eqz v0, :cond_68

    .line 140
    :try_start_62
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_68

    .line 142
    :catch_66
    move-exception v2

    goto :goto_69

    .line 143
    :cond_68
    :goto_68
    nop

    .line 144
    :goto_69
    throw v1
.end method

.method public static updateWakeupGesture(Landroid/content/Context;IZ)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z

    .line 83
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 84
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 85
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "updateWakeupGesture: factory binary"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 88
    :cond_1a
    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "fos":Ljava/io/OutputStream;
    :try_start_23
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sec/tsp/cmd"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_5e

    .line 95
    :cond_37
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_3c} :catch_74
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3c} :catch_6a
    .catchall {:try_start_23 .. :try_end_3c} :catchall_68

    move-object v1, v3

    .line 96
    const-string v3, "UTF-8"

    if-eqz p2, :cond_4c

    .line 97
    :try_start_41
    const-string/jumbo v4, "second_screen_enable,1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_56

    .line 99
    :cond_4c
    const-string/jumbo v4, "second_screen_enable,0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 101
    :goto_56
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_59} :catch_74
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_59} :catch_6a
    .catchall {:try_start_41 .. :try_end_59} :catchall_68

    .line 108
    .end local v2    # "file":Ljava/io/File;
    nop

    .line 109
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_7e

    goto :goto_80

    .line 108
    .restart local v2    # "file":Ljava/io/File;
    :cond_5e
    :goto_5e
    if-eqz v1, :cond_66

    .line 109
    :try_start_60
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_66

    .line 111
    :catch_64
    move-exception v3

    goto :goto_67

    .line 112
    :cond_66
    :goto_66
    nop

    .line 93
    :goto_67
    return-void

    .line 107
    .end local v2    # "file":Ljava/io/File;
    :catchall_68
    move-exception v2

    goto :goto_81

    .line 104
    :catch_6a
    move-exception v2

    .line 105
    .local v2, "e":Ljava/io/IOException;
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_68

    .line 108
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_80

    .line 109
    :try_start_70
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_7e

    goto :goto_80

    .line 102
    :catch_74
    move-exception v2

    .line 103
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_75
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_68

    .line 108
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_80

    .line 109
    :try_start_7a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_80

    .line 111
    :catch_7e
    move-exception v2

    .line 113
    goto :goto_8b

    .line 112
    :cond_80
    :goto_80
    goto :goto_8b

    .line 108
    :goto_81
    if-eqz v1, :cond_89

    .line 109
    :try_start_83
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_89

    .line 111
    :catch_87
    move-exception v3

    goto :goto_8a

    .line 112
    :cond_89
    :goto_89
    nop

    .line 113
    :goto_8a
    throw v2

    .line 115
    .end local v1    # "fos":Ljava/io/OutputStream;
    :cond_8b
    :goto_8b
    return-void
.end method
