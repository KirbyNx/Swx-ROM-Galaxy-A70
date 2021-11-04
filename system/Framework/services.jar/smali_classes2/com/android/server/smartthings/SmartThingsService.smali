.class public Lcom/android/server/smartthings/SmartThingsService;
.super Ljava/lang/Object;
.source "SmartThingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;
    }
.end annotation


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final SMARTTHINGS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.oneconnect"

.field private static final TAG:Ljava/lang/String; = "oneconnect_svc"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 24
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 25
    const-string v1, "com.samsung.android.oneconnect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 26
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 30
    new-instance v1, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;-><init>(Lcom/android/server/smartthings/SmartThingsService;Lcom/android/server/smartthings/SmartThingsService$1;)V

    .line 31
    .local v1, "updateReceiver":Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/smartthings/SmartThingsService;->backgroundWhitelist(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/smartthings/SmartThingsService;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartthings/SmartThingsService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Lcom/android/server/smartthings/SmartThingsService;->backgroundWhitelist(Landroid/content/Context;)V

    return-void
.end method

.method private backgroundWhitelist(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const-string/jumbo v0, "oneconnect_svc"

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.oneconnect"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 60
    .local v1, "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "uidString":Ljava/lang/String;
    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_2a

    if-nez v2, :cond_1b

    goto :goto_2a

    .line 66
    :cond_1b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 67
    .local v3, "am":Landroid/app/IActivityManager;
    invoke-interface {v3, v1}, Landroid/app/IActivityManager;->backgroundWhitelistUid(I)V

    .line 68
    const-string/jumbo v4, "smartthings service : backgroundWhitelist successfully called"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    nop

    .end local v1    # "uid":I
    .end local v2    # "uidString":Ljava/lang/String;
    .end local v3    # "am":Landroid/app/IActivityManager;
    goto :goto_4f

    .line 62
    .restart local v1    # "uid":I
    .restart local v2    # "uidString":Ljava/lang/String;
    :cond_2a
    :goto_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "smartthings service : backgroundWhitelist: bad uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uidString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_47} :catch_48

    .line 63
    return-void

    .line 69
    .end local v1    # "uid":I
    .end local v2    # "uidString":Ljava/lang/String;
    :catch_48
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "smartthings service : backgroundWhitelist exception "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4f
    return-void
.end method
