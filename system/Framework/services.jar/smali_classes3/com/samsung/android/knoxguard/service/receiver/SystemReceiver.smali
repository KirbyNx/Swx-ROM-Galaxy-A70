.class public Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemReceiver.java"


# static fields
.field private static final INTENT_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.RMM_INIT"

.field private static final RMM_BLINK_STOP:Ljava/lang/String; = "com.samsung.android.rmm.blink_stop"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 27
    if-eqz p2, :cond_1c3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_1c3

    .line 32
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getActionList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getActionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mPreFix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/samsung/android/knoxguard/service/IntentRelayManager;->sendRequestedIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 39
    :cond_51
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "KGVM bindToLockScreen"

    const-string v3, "China Binary and previously enrolled. Lock device without passcode."

    const-string v4, "Locked"

    const-string v5, "checkKGClientIntegrity false. Lock device without passcode."

    const-string v6, "3020"

    const-string v7, "isSetupWizardFinished : "

    const-string v8, "Received action "

    if-eqz v1, :cond_fc

    .line 40
    sget-object v1, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "rlcState":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSetupWizardFinished(Landroid/content/Context;)Z

    move-result v8

    .line 43
    .local v8, "isSetupWizardFinished":Z
    sget-object v9, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p1, v1}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->checkKGClientIntegrity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 45
    sget-object v3, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    const-string v5, "checkKGClientIntegrity true. "

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-eqz v8, :cond_fa

    if-eqz v1, :cond_fa

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 48
    :try_start_ae
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getKGVM()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->bindToLockScreen()V

    .line 49
    sget-object v3, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_ae .. :try_end_ba} :catchall_bb

    goto :goto_c5

    .line 50
    :catchall_bb
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_c5
    goto :goto_fa

    .line 55
    :cond_c6
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 56
    if-eqz v1, :cond_e1

    const-string v2, "Prenormal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 57
    sget-object v2, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Device country is China"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setCheckingStateToRlc(Landroid/content/Context;)V

    goto :goto_f1

    .line 59
    :cond_e1
    if-eqz v8, :cond_f1

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 61
    sget-object v2, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->autoLockDevice(Landroid/content/Context;)V

    .line 64
    :cond_f1
    :goto_f1
    return-void

    .line 67
    :cond_f2
    invoke-static {p1, v6}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    sget-object v2, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v1    # "rlcState":Ljava/lang/String;
    .end local v8    # "isSetupWizardFinished":Z
    :cond_fa
    :goto_fa
    goto/16 :goto_1c2

    :cond_fc
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 71
    sget-object v1, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSetupWizardFinished(Landroid/content/Context;)Z

    move-result v1

    .line 73
    .local v1, "isSetupWizardFinished":Z
    sget-object v3, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz v1, :cond_155

    .line 75
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "rlcState":Ljava/lang/String;
    if-eqz v3, :cond_155

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_155

    .line 78
    :try_start_13e
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getKGVM()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->bindToLockScreen()V

    .line 79
    sget-object v4, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14a
    .catchall {:try_start_13e .. :try_end_14a} :catchall_14b

    .line 82
    goto :goto_155

    .line 80
    :catchall_14b
    move-exception v2

    .line 81
    .restart local v2    # "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v1    # "isSetupWizardFinished":Z
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "rlcState":Ljava/lang/String;
    :cond_155
    :goto_155
    goto :goto_1c2

    :cond_156
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_198

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_198

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    goto :goto_198

    .line 96
    :cond_16f
    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17f

    const-string v1, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    .line 97
    :cond_17f
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "rlcState":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result v2

    if-eqz v2, :cond_1c2

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c2

    .line 100
    sget-object v2, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->autoLockDevice(Landroid/content/Context;)V

    goto :goto_1c2

    .line 86
    .end local v1    # "rlcState":Ljava/lang/String;
    :cond_198
    :goto_198
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.kgclient"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    .line 88
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .restart local v1    # "rlcState":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->checkKGClientIntegrity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ba

    .line 90
    sget-object v2, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    const-string v3, "checkKGClientIntegrity true. Do nothing."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c2

    .line 92
    :cond_1ba
    invoke-static {p1, v6}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    sget-object v2, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v1    # "rlcState":Ljava/lang/String;
    :cond_1c2
    :goto_1c2
    return-void

    .line 28
    .end local v0    # "action":Ljava/lang/String;
    :cond_1c3
    :goto_1c3
    sget-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    const-string v1, "intent is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method
