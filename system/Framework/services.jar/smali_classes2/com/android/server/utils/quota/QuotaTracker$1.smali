.class Lcom/android/server/utils/quota/QuotaTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "QuotaTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/quota/QuotaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/quota/QuotaTracker;


# direct methods
.method constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/utils/quota/QuotaTracker;

    .line 114
    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 116
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 117
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 122
    if-eqz p2, :cond_77

    .line 123
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_77

    .line 126
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1d

    .line 128
    # getter for: Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/utils/quota/QuotaTracker;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received intent with null action"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 131
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7ad942ef    # -7.8400085E-36f

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v2, v3, :cond_38

    const v3, 0x5e33a4ad

    if-eq v2, v3, :cond_2e

    :cond_2d
    goto :goto_42

    :cond_2e
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v1

    goto :goto_43

    :cond_38
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v4

    goto :goto_43

    :goto_42
    move v2, v5

    :goto_43
    if-eqz v2, :cond_5d

    if-eq v2, v4, :cond_48

    goto :goto_73

    .line 139
    :cond_48
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 140
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object v2, v2, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 141
    :try_start_53
    iget-object v3, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    # invokes: Lcom/android/server/utils/quota/QuotaTracker;->onUserRemovedLocked(I)V
    invoke-static {v3, v1}, Lcom/android/server/utils/quota/QuotaTracker;->access$300(Lcom/android/server/utils/quota/QuotaTracker;I)V

    .line 142
    monitor-exit v2

    goto :goto_73

    :catchall_5a
    move-exception v3

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_5a

    throw v3

    .line 133
    .end local v1    # "userId":I
    :cond_5d
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 134
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object v2, v2, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_68
    iget-object v3, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-direct {p0, p2}, Lcom/android/server/utils/quota/QuotaTracker$1;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/utils/quota/QuotaTracker;->onAppRemovedLocked(Ljava/lang/String;I)V
    invoke-static {v3, v4, v1}, Lcom/android/server/utils/quota/QuotaTracker;->access$200(Lcom/android/server/utils/quota/QuotaTracker;Ljava/lang/String;I)V

    .line 136
    monitor-exit v2

    .line 137
    nop

    .line 145
    .end local v1    # "uid":I
    :goto_73
    return-void

    .line 136
    .restart local v1    # "uid":I
    :catchall_74
    move-exception v3

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_74

    throw v3

    .line 124
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "uid":I
    :cond_77
    :goto_77
    return-void
.end method
