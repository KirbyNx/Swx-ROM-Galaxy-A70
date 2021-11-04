.class Lcom/android/server/display/WifiDisplayController$39;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->wakeUpScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    .line 2651
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$39;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2654
    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "wakeUpScreen"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$39;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2656
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2657
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$39;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$7302(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto :goto_34

    .line 2659
    :cond_24
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$39;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$7302(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2660
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const-string v4, "WifiDisplay WakeUpScreen"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 2663
    :goto_34
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$39;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 2664
    .local v1, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    .line 2665
    return-void
.end method
