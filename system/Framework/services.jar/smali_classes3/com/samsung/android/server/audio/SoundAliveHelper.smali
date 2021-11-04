.class public Lcom/samsung/android/server/audio/SoundAliveHelper;
.super Ljava/lang/Object;
.source "SoundAliveHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AS.SoundAliveHelper"

.field private static sIsSoundAliveExist:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/server/audio/SoundAliveHelper;->sIsSoundAliveExist:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSoundAliveExist(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    sget-boolean v0, Lcom/samsung/android/server/audio/SoundAliveHelper;->sIsSoundAliveExist:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 38
    return v1

    .line 41
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 42
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.android.app.soundalive.compatibility.SAContentProvider"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_14

    goto :goto_15

    :cond_14
    move v1, v3

    :goto_15
    sput-boolean v1, Lcom/samsung/android/server/audio/SoundAliveHelper;->sIsSoundAliveExist:Z

    .line 44
    return v1
.end method

.method public static notifyDVFSToSoundAlive(Landroid/content/Context;IZ)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # I
    .param p2, "isScreenOn"    # Z

    .line 48
    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/SoundAliveHelper;->wasStreamActiveRecently(II)Z

    move-result v0

    if-nez v0, :cond_c

    .line 50
    return-void

    .line 53
    :cond_c
    invoke-static {p0}, Lcom/samsung/android/server/audio/SoundAliveHelper;->isSoundAliveExist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 54
    return-void

    .line 57
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify dvfs state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screen : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.SoundAliveHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "content://com.sec.android.app.soundalive.compatibility.SAContentProvider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "SCREEN_STATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 62
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5d} :catch_5f

    .line 65
    nop

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    goto :goto_65

    .line 63
    :catch_5f
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "notifyDVFSToSoundAlive"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_65
    return-void
.end method

.method private static wasStreamActiveRecently(II)Z
    .registers 3
    .param p0, "stream"    # I
    .param p1, "delay_ms"    # I

    .line 69
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 70
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 69
    :goto_10
    return v0
.end method
