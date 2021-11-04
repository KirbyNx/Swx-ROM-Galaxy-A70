.class public Lcom/android/server/pm/ShortcutBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutBackupReceiver.java"


# static fields
.field static final BROADCAST_PERMISSION:Ljava/lang/String; = "com.wssnps.permission.COM_WSSNPS"

.field private static final REQUEST_BACKUP_SHORTCUT:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_BACKUP_SHORTCUT"

.field private static final REQUEST_BACKUP_SHORTCUT_INNER:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_BACKUP_SHORTCUTBR"

.field private static final REQUEST_RESTORE_SHORTCUT:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_RESTORE_SHORTCUT"

.field private static final REQUEST_RESTORE_SHORTCUT_INNER:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_RESTORE_SHORTCUTBR"

.field private static SHORTCUT_BACKUP_SERVICE_PACKAGE_NAME:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "ShortcutBackupReceiver"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-string v0, "com.samsung.android.shortcutbackupservice"

    sput-object v0, Lcom/android/server/pm/ShortcutBackupReceiver;->SHORTCUT_BACKUP_SERVICE_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortcutBackupReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    if-nez v0, :cond_1e

    .line 28
    return-void

    .line 31
    :cond_1e
    const-string v1, "com.samsung.android.intent.action.REQUEST_BACKUP_SHORTCUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 32
    const-string v1, "com.samsung.android.intent.action.REQUEST_BACKUP_SHORTCUTBR"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_39

    .line 34
    :cond_2c
    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_SHORTCUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 35
    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_SHORTCUTBR"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    :goto_39
    sget-object v1, Lcom/android/server/pm/ShortcutBackupReceiver;->SHORTCUT_BACKUP_SERVICE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 44
    const-string v1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 45
    return-void

    .line 38
    :cond_48
    return-void
.end method
