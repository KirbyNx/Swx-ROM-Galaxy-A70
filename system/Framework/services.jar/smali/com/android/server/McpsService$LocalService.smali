.class final Lcom/android/server/McpsService$LocalService;
.super Ljava/lang/Object;
.source "McpsService.java"

# interfaces
.implements Lcom/android/server/McpsServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/McpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/McpsService;


# direct methods
.method private constructor <init>(Lcom/android/server/McpsService;)V
    .registers 2

    .line 824
    iput-object p1, p0, Lcom/android/server/McpsService$LocalService;->this$0:Lcom/android/server/McpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/McpsService;Lcom/android/server/McpsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/McpsService;
    .param p2, "x1"    # Lcom/android/server/McpsService$1;

    .line 824
    invoke-direct {p0, p1}, Lcom/android/server/McpsService$LocalService;-><init>(Lcom/android/server/McpsService;)V

    return-void
.end method


# virtual methods
.method public updateMCPSConnectivityAddresses()V
    .registers 2

    .line 835
    iget-object v0, p0, Lcom/android/server/McpsService$LocalService;->this$0:Lcom/android/server/McpsService;

    # invokes: Lcom/android/server/McpsService;->updateInterfaceAddress()V
    invoke-static {v0}, Lcom/android/server/McpsService;->access$800(Lcom/android/server/McpsService;)V

    .line 836
    return-void
.end method

.method public updateMCPSConnectivityPolicy(Z)V
    .registers 3
    .param p1, "mobile"    # Z

    .line 830
    iget-object v0, p0, Lcom/android/server/McpsService$LocalService;->this$0:Lcom/android/server/McpsService;

    # invokes: Lcom/android/server/McpsService;->updateBasePolicy(Z)V
    invoke-static {v0, p1}, Lcom/android/server/McpsService;->access$700(Lcom/android/server/McpsService;Z)V

    .line 831
    return-void
.end method
