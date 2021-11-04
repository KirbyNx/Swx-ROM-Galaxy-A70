.class Lcom/android/server/VibratorService$6;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorService;->registerVrStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/VibratorService;

    .line 3071
    iput-object p1, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3075
    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1c

    const/16 v1, 0x10

    if-eq p1, v1, :cond_16

    const/16 v0, 0x20

    if-eq p1, v0, :cond_10

    goto :goto_30

    .line 3085
    :cond_10
    iget-object v0, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mHMTMount:Z
    invoke-static {v0, v2}, Lcom/android/server/VibratorService;->access$5402(Lcom/android/server/VibratorService;Z)Z

    .line 3086
    goto :goto_30

    .line 3082
    :cond_16
    iget-object v1, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mHMTMount:Z
    invoke-static {v1, v0}, Lcom/android/server/VibratorService;->access$5402(Lcom/android/server/VibratorService;Z)Z

    .line 3083
    goto :goto_30

    .line 3088
    :cond_1c
    iget-object v0, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mHMTMount:Z
    invoke-static {v0, v2}, Lcom/android/server/VibratorService;->access$5402(Lcom/android/server/VibratorService;Z)Z

    .line 3089
    iget-object v0, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mIsGearVrTetheredDocked:Z
    invoke-static {v0, v2}, Lcom/android/server/VibratorService;->access$5302(Lcom/android/server/VibratorService;Z)Z

    goto :goto_30

    .line 3077
    :cond_27
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_30

    .line 3078
    iget-object v1, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mIsGearVrTetheredDocked:Z
    invoke-static {v1, v0}, Lcom/android/server/VibratorService;->access$5302(Lcom/android/server/VibratorService;Z)Z

    .line 3092
    :cond_30
    :goto_30
    return-void
.end method
