.class public final Lcom/android/server/om/SemSamsungThemeUtils;
.super Ljava/lang/Object;
.source "SemSamsungThemeUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OverlayManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSiblingTarget(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "siblingSourcePkg"    # Ljava/lang/String;
    .param p1, "siblingTargetPkg"    # Ljava/lang/String;

    .line 146
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    .line 147
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 148
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 147
    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return v2

    .line 151
    :cond_1d
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 153
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return v2

    .line 157
    :cond_37
    return v1
.end method

.method public static deleteAllFilesInDir(Ljava/lang/String;)V
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .line 176
    if-nez p0, :cond_a

    .line 177
    const-string v0, "OverlayManager"

    const-string v1, "deleteAllFilesInDir, path is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void

    .line 181
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 184
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_28

    .line 185
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    .line 186
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_24} :catch_29

    .line 185
    nop

    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 192
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_28
    goto :goto_2d

    .line 190
    :catch_29
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 193
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_2d
    return-void
.end method

.method public static getChangedPackageNames()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "com.android.contacts"

    invoke-static {v1}, Lcom/android/server/om/SemSamsungThemeUtils;->getReplaceablePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_16

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_16
    const-string v1, "com.android.mms"

    invoke-static {v1}, Lcom/android/server/om/SemSamsungThemeUtils;->getReplaceablePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_27

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 104
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_27
    const-string v1, "com.android.incallui"

    invoke-static {v1}, Lcom/android/server/om/SemSamsungThemeUtils;->getReplaceablePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_38

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_38
    const-string v1, "com.android.calendar"

    invoke-static {v1}, Lcom/android/server/om/SemSamsungThemeUtils;->getReplaceablePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_49

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 112
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_49
    return-object v0
.end method

.method private static getReplaceablePackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "legacyPackageName"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "com.android.incallui"

    const-string v3, "com.android.calendar"

    const-string v4, "com.android.mms"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "com.android.contacts"

    sparse-switch v1, :sswitch_data_88

    :cond_13
    goto :goto_34

    :sswitch_14
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v5

    goto :goto_35

    :sswitch_1c
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v7

    goto :goto_35

    :sswitch_24
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v6

    goto :goto_35

    :sswitch_2c
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    goto :goto_35

    :goto_34
    const/4 v1, -0x1

    :goto_35
    if-eqz v1, :cond_66

    if-eq v1, v7, :cond_5b

    if-eq v1, v6, :cond_50

    if-eq v1, v5, :cond_45

    .line 71
    const-string v1, "OverlayManager"

    const-string v2, "Wrong package name in getReplaceablePackageName!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-object v0

    .line 66
    :cond_45
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v3, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    goto :goto_71

    .line 61
    :cond_50
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    goto :goto_71

    .line 56
    :cond_5b
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    goto :goto_71

    .line 51
    :cond_66
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    invoke-virtual {v1, v2, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    nop

    .line 74
    :goto_71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 77
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 83
    return-object v0

    .line 85
    :cond_84
    return-object p0

    .line 88
    :cond_85
    return-object p0

    .line 91
    :cond_86
    return-object v0

    nop

    :sswitch_data_88
    .sparse-switch
        -0x3260a241 -> :sswitch_2c
        -0x29760a19 -> :sswitch_24
        -0x1b2f0756 -> :sswitch_1c
        -0xbcbbbbd -> :sswitch_14
    .end sparse-switch
.end method

.method public static hasSamsungOverlayPermission(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 119
    .local p0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 120
    return v0

    .line 122
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    .local v2, "permission":Ljava/lang/String;
    if-eqz v2, :cond_28

    const-string v3, "com.samsung.android.permission.SAMSUNG_OVERLAY_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 124
    const-string v3, "com.samsung.android.permission.SAMSUNG_OVERLAY_COMPONENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 126
    :cond_26
    const/4 v0, 0x1

    return v0

    .line 128
    .end local v2    # "permission":Ljava/lang/String;
    :cond_28
    goto :goto_8

    .line 129
    :cond_29
    return v0
.end method

.method public static hasSamsungThemeSibling(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .line 135
    if-eqz p0, :cond_1b

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 137
    const-string/jumbo v1, "samsungtheme-sibling"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 139
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static hasZippedLocaleOverlayMetaData(Landroid/os/Bundle;)Z
    .registers 2
    .param p0, "metadata"    # Landroid/os/Bundle;

    .line 220
    if-eqz p0, :cond_c

    const-string v0, "com.samsung.android.zippedOverlay"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p0, "overlayPackage"    # Landroid/content/pm/PackageInfo;

    .line 224
    if-nez p0, :cond_4

    .line 225
    const/4 v0, 0x0

    return v0

    .line 227
    :cond_4
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    const-string/jumbo v1, "zipped-overlay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static moveFiles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "sourcePath"    # Ljava/lang/String;
    .param p1, "targetPath"    # Ljava/lang/String;

    .line 197
    if-eqz p0, :cond_3d

    if-nez p1, :cond_5

    goto :goto_3d

    .line 202
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "sourceDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "targetDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 206
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_37

    .line 207
    array-length v3, v2

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v3, :cond_37

    aget-object v5, v2, v4

    .line 208
    .local v5, "file":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    .local v6, "toFile":Ljava/io/File;
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_33
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_33} :catch_38

    .line 207
    nop

    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "toFile":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 215
    .end local v0    # "sourceDir":Ljava/io/File;
    .end local v1    # "targetDir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :cond_37
    goto :goto_3c

    .line 213
    :catch_38
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 216
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_3c
    return-void

    .line 198
    :cond_3d
    :goto_3d
    const-string v0, "OverlayManager"

    const-string/jumbo v1, "moveFiles, path is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public static removeSiblingTarget(Ljava/lang/String;)Z
    .registers 4
    .param p0, "siblingTargetPkg"    # Ljava/lang/String;

    .line 162
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, "siblingSourcePkg":Ljava/lang/String;
    sget-object v2, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 165
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 167
    const/4 v0, 0x1

    return v0

    .line 169
    .end local v1    # "siblingSourcePkg":Ljava/lang/String;
    :cond_31
    goto :goto_a

    .line 170
    :cond_32
    const/4 v0, 0x0

    return v0
.end method
