.class Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TxBatteryLimitSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 971
    iput-object p1, p0, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 972
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 973
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 977
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 979
    iget-object v0, p0, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver$1;-><init>(Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 991
    return-void
.end method
