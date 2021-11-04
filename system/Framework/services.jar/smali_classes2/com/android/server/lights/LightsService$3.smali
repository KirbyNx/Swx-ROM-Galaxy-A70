.class Lcom/android/server/lights/LightsService$3;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;

    .line 1012
    iput-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 6
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .line 1015
    iget-object v0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    # setter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$702(Lcom/android/server/lights/LightsService;I)I

    .line 1016
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    const-string v1, "LightsService"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_32

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onCoverStateChanged : SWITCH_STATE_COVER_OPEN covertype: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object v0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    # setter for: Lcom/android/server/lights/LightsService;->mCoverOpened:Z
    invoke-static {v0, v2}, Lcom/android/server/lights/LightsService;->access$802(Lcom/android/server/lights/LightsService;Z)Z

    goto :goto_9c

    .line 1020
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onCoverStateChanged : SWITCH_STATE_COVER_CLOSE covertype: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/lights/LightsService;->mCoverOpened:Z
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$802(Lcom/android/server/lights/LightsService;Z)Z

    .line 1022
    iget-object v0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9c

    .line 1023
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    .line 1024
    .local v0, "lights":Lcom/android/server/lights/LightsManager;
    if-eqz v0, :cond_9c

    .line 1025
    iget-object v1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v2

    # setter for: Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$3102(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LogicalLight;)Lcom/android/server/lights/LogicalLight;

    .line 1026
    iget-object v1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v2

    # setter for: Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/LogicalLight;
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$3202(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LogicalLight;)Lcom/android/server/lights/LogicalLight;

    .line 1027
    iget-object v1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$3100(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LogicalLight;

    move-result-object v1

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$3100(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LogicalLight;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    .line 1028
    :cond_8b
    iget-object v1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/LogicalLight;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$3200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LogicalLight;

    move-result-object v1

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/LogicalLight;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$3200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LogicalLight;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    .line 1032
    .end local v0    # "lights":Lcom/android/server/lights/LightsManager;
    :cond_9c
    :goto_9c
    return-void
.end method
