.class Lcom/android/server/wm/ActivityManagerPerformance$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityManagerPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityManagerPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityManagerPerformance;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityManagerPerformance;

    .line 1325
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1328
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1329
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ActivityManagerPerformance"

    if-eqz v1, :cond_1e

    .line 1330
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_17

    .line 1331
    const-string v1, "Screen state changed. mIsScreenOn: false"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->access$702(Lcom/android/server/wm/ActivityManagerPerformance;Z)Z

    goto :goto_3a

    .line 1333
    :cond_1e
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1334
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_2f

    .line 1335
    const-string v1, "Screen state changed. mIsScreenOn: true"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_2f
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->access$702(Lcom/android/server/wm/ActivityManagerPerformance;Z)Z

    .line 1337
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    # setter for: Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z
    invoke-static {v1, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->access$802(Lcom/android/server/wm/ActivityManagerPerformance;Z)Z

    .line 1339
    :cond_3a
    :goto_3a
    return-void
.end method
