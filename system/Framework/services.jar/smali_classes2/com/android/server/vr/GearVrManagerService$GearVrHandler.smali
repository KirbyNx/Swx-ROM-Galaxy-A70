.class final Lcom/android/server/vr/GearVrManagerService$GearVrHandler;
.super Landroid/os/Handler;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GearVrHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/GearVrManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 184
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    .line 185
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 186
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_44

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3a

    const/16 v2, 0xa

    if-eq v0, v2, :cond_27

    const/16 v1, 0xb

    if-eq v0, v1, :cond_14

    goto :goto_58

    .line 217
    :cond_14
    :try_start_14
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 218
    .local v8, "hideCutout":I
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mWindowManager:Landroid/view/IWindowManager;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$200(Lcom/android/server/vr/GearVrManagerService;)Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensity(IIIIZI)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_24} :catch_25

    .line 221
    .end local v8    # "hideCutout":I
    goto :goto_58

    .line 220
    :catch_25
    move-exception v0

    .line 223
    goto :goto_58

    .line 209
    :cond_27
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    move v0, v1

    .line 210
    .local v0, "enabled":Z
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 211
    .local v1, "userId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 212
    .local v2, "exemptedPackages":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->handleOverlayRestriction(Z[Ljava/lang/String;I)V
    invoke-static {v3, v0, v2, v1}, Lcom/android/server/vr/GearVrManagerService;->access$100(Lcom/android/server/vr/GearVrManagerService;Z[Ljava/lang/String;I)V

    .line 214
    .end local v0    # "enabled":Z
    .end local v1    # "userId":I
    .end local v2    # "exemptedPackages":[Ljava/lang/String;
    goto :goto_58

    .line 203
    :cond_3a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 204
    .local v0, "state":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 205
    .local v1, "type":I
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->handleVrStateChange(II)V
    invoke-static {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$000(Lcom/android/server/vr/GearVrManagerService;II)V

    .line 207
    .end local v0    # "state":I
    .end local v1    # "type":I
    goto :goto_58

    .line 197
    :cond_44
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 198
    .restart local v0    # "state":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 199
    .restart local v1    # "type":I
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->handleVrStateChange(II)V
    invoke-static {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$000(Lcom/android/server/vr/GearVrManagerService;II)V

    .line 201
    .end local v0    # "state":I
    .end local v1    # "type":I
    goto :goto_58

    .line 191
    :cond_4e
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 192
    .restart local v0    # "state":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 193
    .restart local v1    # "type":I
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->handleVrStateChange(II)V
    invoke-static {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$000(Lcom/android/server/vr/GearVrManagerService;II)V

    .line 195
    .end local v0    # "state":I
    .end local v1    # "type":I
    nop

    .line 227
    :goto_58
    return-void
.end method
