.class public Lcom/android/server/sdp/util/PathTranslator;
.super Ljava/lang/Object;
.source "PathTranslator.java"


# static fields
.field private static final PACKAGE_DATA_DATA_PATH_PREFIX:Ljava/lang/String; = "/data/data"

.field private static final PACKAGE_DATA_PATH_PREFIX:Ljava/lang/String; = "/data/user"

.field private static final PACKAGE_DE_DATA_PATH_PREFIX:Ljava/lang/String; = "/data/user_de"

.field private static final PATH_MNT_EXTSD:Ljava/lang/String; = "/mnt/extSdCard"

.field private static final PATH_MNT_KNOX:Ljava/lang/String; = "/mnt/knox/default/emulated"

.field private static final PATH_MNT_RUNTIME:Ljava/lang/String; = "/mnt/runtime/default/emulated"

.field private static final PATH_MNT_SD:Ljava/lang/String; = "/mnt/sdcard"

.field private static final PATH_STORAGE_EMULATED:Ljava/lang/String; = "/storage/emulated"

.field private static final PATH_STORAGE_EMULATED_EXP:Ljava/lang/String; = "^/storage/emulated/([0-9]+)"

.field private static final PATH_STORAGE_EMULATED_LEGACY:Ljava/lang/String; = "/storage/emulated/legacy"

.field private static final PATH_STORAGE_EXTSD:Ljava/lang/String; = "/storage/extSdCard"

.field private static final PATH_STORAGE_SELF_PRIMARY:Ljava/lang/String; = "/storage/self/primary"

.field private static final REALPATH_PATTERN:Ljava/lang/String; = "(/mnt/knox/)(default|write|read)(/emulated)(.*)"

.field private static final mFilePathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/sdp/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    .line 37
    const-string v1, "^/data/data"

    const-string v2, "/data/user/?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/server/sdp/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    const-string v1, "^/storage/enc_emulated/legacy"

    const-string v2, "/mnt/shell/enc_emulated/?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/server/sdp/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    const-string v1, "^/storage/enc_emulated/([0-9]+)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/server/sdp/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    const-string v1, "^/data/clipboard"

    const-string v2, "/data/clipboard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/server/sdp/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    const-string v1, "^/data/user"

    const-string v2, "/data/user"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/server/sdp/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    const-string v1, "^/data/user_de"

    const-string v2, "/data/user_de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/server/sdp/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    const-string v1, "^/data/system/container/"

    const-string v2, "/data/system/container/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppLevelPathForMediaScan(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "realPath"    # Ljava/lang/String;

    .line 134
    move-object v0, p0

    .line 136
    .local v0, "appLevelPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "real path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "epmf"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8e

    const-string v1, "/mnt/extSdCard"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 138
    const-string v1, "/storage/extSdCard"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 139
    const-string v1, "(/mnt/knox/)(default|write|read)(/emulated)(.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 140
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 141
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_79

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_79

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/storage/emulated"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appLevelPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 145
    :cond_79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pathout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    :cond_8e
    :goto_8e
    return-object v0
.end method

.method public static getRealPath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "containerId"    # I

    .line 55
    const-string v0, ""

    .line 56
    .local v0, "realPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 59
    .local v1, "found":Z
    if-eqz p0, :cond_f5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_e

    goto/16 :goto_f5

    .line 62
    :cond_e
    const-string v2, "/mnt/extSdCard"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f4

    const-string v2, "/storage/extSdCard"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto/16 :goto_f4

    .line 66
    :cond_20
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 67
    return-object p0

    .line 69
    :cond_27
    const/4 v2, 0x0

    .line 70
    .local v2, "ui":Landroid/content/pm/UserInfo;
    const-string/jumbo v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v3

    .line 72
    .local v3, "userManager":Landroid/os/IUserManager;
    :try_start_33
    invoke-interface {v3, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_37} :catch_39

    move-object v2, v4

    .line 73
    :goto_38
    goto :goto_3b

    :catch_39
    move-exception v4

    goto :goto_38

    .line 75
    :goto_3b
    const-string v4, "/mnt/sdcard"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "/storage/emulated/legacy"

    const-string v7, "/storage/self/primary"

    if-nez v5, :cond_ac

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ac

    .line 76
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ac

    const-string v5, "/storage/emulated"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    goto :goto_ac

    .line 92
    :cond_5c
    sget-object v4, Lcom/android/server/sdp/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 93
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 94
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 97
    const/4 v1, 0x1

    .line 98
    goto :goto_f3

    .line 100
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_ab
    goto :goto_66

    .line 79
    :cond_ac
    :goto_ac
    const-string v5, "/mnt/runtime/default/emulated"

    .line 80
    .local v5, "leadPath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cf

    const-string v4, "/mnt/sdcard"

    .local v4, "srcPath":Ljava/lang/String;
    goto :goto_ee

    .line 83
    .end local v4    # "srcPath":Ljava/lang/String;
    :cond_cf
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d8

    const-string v4, "/storage/self/primary"

    .restart local v4    # "srcPath":Ljava/lang/String;
    goto :goto_ee

    .line 84
    .end local v4    # "srcPath":Ljava/lang/String;
    :cond_d8
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e1

    const-string v4, "/storage/emulated/legacy"

    .restart local v4    # "srcPath":Ljava/lang/String;
    goto :goto_ee

    .line 85
    .end local v4    # "srcPath":Ljava/lang/String;
    :cond_e1
    const-string v4, "^/storage/emulated/([0-9]+).*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ec

    const-string v4, "^/storage/emulated/([0-9]+)"

    .restart local v4    # "srcPath":Ljava/lang/String;
    goto :goto_ee

    .line 86
    .end local v4    # "srcPath":Ljava/lang/String;
    :cond_ec
    const-string v4, "/storage/emulated"

    .line 88
    .restart local v4    # "srcPath":Ljava/lang/String;
    :goto_ee
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 91
    .end local v4    # "srcPath":Ljava/lang/String;
    .end local v5    # "leadPath":Ljava/lang/String;
    nop

    .line 104
    :cond_f3
    :goto_f3
    return-object p0

    .line 63
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    .end local v3    # "userManager":Landroid/os/IUserManager;
    :cond_f4
    :goto_f4
    return-object p0

    .line 60
    :cond_f5
    :goto_f5
    const/4 v2, 0x0

    return-object v2
.end method

.method public static isPackageDataRelatedPath(Ljava/lang/String;I)Z
    .registers 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "containerId"    # I

    .line 114
    invoke-static {p0, p1}, Lcom/android/server/sdp/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "translatedPath":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 117
    return v1

    .line 119
    :cond_8
    const-string v2, "/data/data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 120
    .local v2, "retVal_data":Z
    const-string v3, "/data/user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 121
    .local v3, "retVal_ce":Z
    const-string v4, "/data/user_de"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 123
    .local v4, "retVal_de":Z
    const-string v5, "epmf"

    if-nez v2, :cond_39

    if-nez v3, :cond_39

    if-eqz v4, :cond_23

    goto :goto_39

    .line 127
    :cond_23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not a package path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 124
    :cond_39
    :goto_39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package path detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_4e
    if-nez v2, :cond_54

    if-nez v3, :cond_54

    if-eqz v4, :cond_55

    :cond_54
    const/4 v1, 0x1

    :cond_55
    return v1
.end method
