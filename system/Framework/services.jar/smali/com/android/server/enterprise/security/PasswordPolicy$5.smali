.class Lcom/android/server/enterprise/security/PasswordPolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "PasswordPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 840
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 845
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy$5;->getSendingUserId()I

    move-result v1

    .line 847
    .local v1, "sendingUserId":I
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderClearCallingIdentity()J

    move-result-wide v2

    .line 848
    .local v2, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 850
    .local v4, "currentUserId":I
    const-string v5, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 852
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnTimeout(I)V
    invoke-static {v5, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$300(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto/16 :goto_cd

    .line 854
    :cond_23
    const-string v5, "android.intent.action.USER_STARTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    const-string v7, "android.intent.extra.user_handle"

    if-eqz v5, :cond_3b

    .line 855
    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 856
    .local v5, "newCurrentUser":I
    if-ltz v5, :cond_39

    .line 857
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnStart(I)V
    invoke-static {v6, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$400(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    .line 860
    .end local v5    # "newCurrentUser":I
    :cond_39
    goto/16 :goto_cd

    :cond_3b
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 861
    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 862
    .restart local v5    # "newCurrentUser":I
    if-ltz v5, :cond_4e

    .line 863
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnSwitch(I)V
    invoke-static {v6, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$500(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    .line 866
    .end local v5    # "newCurrentUser":I
    :cond_4e
    goto/16 :goto_cd

    :cond_50
    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 867
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$600(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_cd

    .line 868
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededAfterCall(I)V
    invoke-static {v5, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$700(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto :goto_cd

    .line 871
    :cond_6a
    const-string v5, "com.samsung.android.knox.intent.action.NOTIFICATION_PASSWORD_EXPIRED_INTERNAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 872
    const-string v5, "PasswordPolicy"

    const-string v6, "Received ACTION_PASSWORD_EXPIRING_NOTIFICATION_INTERNAL intent"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const-string v6, "expiration"

    const-wide/16 v7, -0x1

    invoke-virtual {p2, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 875
    .local v9, "expiration":J
    cmp-long v6, v9, v7

    if-eqz v6, :cond_b1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v9, v6

    if-lez v6, :cond_8e

    goto :goto_b1

    .line 880
    :cond_8e
    const-string v6, "Password expired already so launching password screen"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 886
    :try_start_99
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 887
    .local v6, "am":Landroid/app/IActivityManager;
    const-string v7, "com.android.settings"

    invoke-interface {v6, v7, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_a2} :catch_a3

    .line 890
    .end local v6    # "am":Landroid/app/IActivityManager;
    goto :goto_aa

    .line 888
    :catch_a3
    move-exception v6

    .line 889
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "forceStopPackage failed"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_aa
    :goto_aa
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeForUser(II)Z
    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$800(Lcom/android/server/enterprise/security/PasswordPolicy;II)Z

    goto :goto_cd

    .line 876
    :cond_b1
    :goto_b1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In grace period or failed to get "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v5, v5, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    .line 878
    return-void

    .line 894
    .end local v9    # "expiration":J
    :cond_cd
    :goto_cd
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v5, v5, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    .line 895
    return-void
.end method
