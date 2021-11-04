.class public Lcom/samsung/android/server/audio/OmcRingtoneManager;
.super Ljava/lang/Object;
.source "OmcRingtoneManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AS.OmcRingtoneManager"

.field private static sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;


# instance fields
.field private mExcludeNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExcludeRingtones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->loadExcludedSoundsFromCsc()V

    .line 41
    return-void
.end method

.method private getExcludedRingtonesFromCsc(Ljava/lang/String;I)V
    .registers 10
    .param p1, "omcPath"    # Ljava/lang/String;
    .param p2, "ringtoneType"    # I

    .line 69
    const/4 v0, 0x1

    if-ne p2, v0, :cond_22

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/media/audio/ringtones/exclude_ringtones"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "listPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_40

    .line 72
    iget-object v2, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_40

    .line 75
    .end local v1    # "listPath":Ljava/lang/String;
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/media/audio/notifications/exclude_notifications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .restart local v1    # "listPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_40

    .line 77
    iget-object v2, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 81
    :cond_40
    :goto_40
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "excludeRingtoneList":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "AS.OmcRingtoneManager"

    if-eqz v3, :cond_81

    .line 83
    :try_start_4d
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_57} :catch_7a

    .line 84
    .local v3, "inReader":Ljava/io/BufferedReader;
    :goto_57
    :try_start_57
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "ringtoneFile":Ljava/lang/String;
    if-eqz v5, :cond_6c

    .line 85
    if-ne p2, v0, :cond_66

    .line 86
    iget-object v5, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 88
    :cond_66
    iget-object v5, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catchall {:try_start_57 .. :try_end_6b} :catchall_70

    goto :goto_57

    .line 91
    :cond_6c
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_7a

    .line 93
    .end local v3    # "inReader":Ljava/io/BufferedReader;
    goto :goto_9a

    .line 83
    .end local v6    # "ringtoneFile":Ljava/lang/String;
    .restart local v3    # "inReader":Ljava/io/BufferedReader;
    :catchall_70
    move-exception v0

    :try_start_71
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_79

    :catchall_75
    move-exception v5

    :try_start_76
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "listPath":Ljava/lang/String;
    .end local v2    # "excludeRingtoneList":Ljava/io/File;
    .end local p0    # "this":Lcom/samsung/android/server/audio/OmcRingtoneManager;
    .end local p1    # "omcPath":Ljava/lang/String;
    .end local p2    # "ringtoneType":I
    :goto_79
    throw v0
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7a} :catch_7a

    .line 91
    .end local v3    # "inReader":Ljava/io/BufferedReader;
    .restart local v1    # "listPath":Ljava/lang/String;
    .restart local v2    # "excludeRingtoneList":Ljava/io/File;
    .restart local p0    # "this":Lcom/samsung/android/server/audio/OmcRingtoneManager;
    .restart local p1    # "omcPath":Ljava/lang/String;
    .restart local p2    # "ringtoneType":I
    :catch_7a
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "File exception"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_9a

    .line 95
    :cond_81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no sounds(type:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") list to remove"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_9a
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/OmcRingtoneManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    sget-object v0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcom/samsung/android/server/audio/OmcRingtoneManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/OmcRingtoneManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    .line 47
    :cond_b
    sget-object v0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    return-object v0
.end method


# virtual methods
.method public getExcludedNotifications()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    return-object v0
.end method

.method public getExcludedRingtones()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    return-object v0
.end method

.method public loadExcludedSoundsFromCsc()V
    .registers 3

    .line 59
    const-string v0, "persist.sys.omc_respath"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "omcPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 61
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->getExcludedRingtonesFromCsc(Ljava/lang/String;I)V

    .line 62
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->getExcludedRingtonesFromCsc(Ljava/lang/String;I)V

    .line 64
    :cond_14
    return-void
.end method
