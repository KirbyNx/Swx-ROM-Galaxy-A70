.class public Lcom/android/server/ledcover/LedBackCoverService;
.super Landroid/os/Binder;
.source "LedBackCoverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ledcover/LedBackCoverService$UpdateReceiver;
    }
.end annotation


# static fields
.field private static final SAMSUNG_LED_COVER_EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.ledbackcover"

.field private static final TAG:Ljava/lang/String; = "LedBackCoverService"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 24
    const-string v1, "com.samsung.android.app.ledbackcover"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 25
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 29
    new-instance v1, Lcom/android/server/ledcover/LedBackCoverService$UpdateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/ledcover/LedBackCoverService$UpdateReceiver;-><init>(Lcom/android/server/ledcover/LedBackCoverService$1;)V

    .line 30
    .local v1, "updateReceiver":Lcom/android/server/ledcover/LedBackCoverService$UpdateReceiver;
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    invoke-static {p1}, Lcom/android/server/ledcover/LedBackCoverService;->backgroundWhitelist(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 15
    invoke-static {p0}, Lcom/android/server/ledcover/LedBackCoverService;->backgroundWhitelist(Landroid/content/Context;)V

    return-void
.end method

.method private static backgroundWhitelist(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    const-string v0, "LedBackCoverService"

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.app.ledbackcover"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 61
    .local v1, "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "uidString":Ljava/lang/String;
    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_28

    if-nez v2, :cond_1a

    goto :goto_28

    .line 67
    :cond_1a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 68
    .local v3, "am":Landroid/app/IActivityManager;
    invoke-interface {v3, v1}, Landroid/app/IActivityManager;->backgroundWhitelistUid(I)V

    .line 69
    const-string v4, "backgroundWhitelist successfully called"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    nop

    .end local v1    # "uid":I
    .end local v2    # "uidString":Ljava/lang/String;
    .end local v3    # "am":Landroid/app/IActivityManager;
    goto :goto_4b

    .line 63
    .restart local v1    # "uid":I
    .restart local v2    # "uidString":Ljava/lang/String;
    :cond_28
    :goto_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backgroundWhitelist: bad uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uidString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_45

    .line 64
    return-void

    .line 70
    .end local v1    # "uid":I
    .end local v2    # "uidString":Ljava/lang/String;
    :catch_45
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "backgroundWhitelist exception "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4b
    return-void
.end method
