.class final Lcom/android/server/power/PowerManagerService$DexScreenOffTimeoutObserver;
.super Landroid/database/ContentObserver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DexScreenOffTimeoutObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 7812
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DexScreenOffTimeoutObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 7813
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7814
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 7818
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 7819
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DexScreenOffTimeoutObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleDexScreenOffTimeoutChange()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7100(Lcom/android/server/power/PowerManagerService;)V

    .line 7820
    return-void
.end method
