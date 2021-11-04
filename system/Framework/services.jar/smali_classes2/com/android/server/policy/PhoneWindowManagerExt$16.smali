.class Lcom/android/server/policy/PhoneWindowManagerExt$16;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 6818
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$16;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6821
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$16;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mVrImmersiveMode:Z
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6800(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v0

    .line 6823
    .local v0, "lastVrImmersiveMode":Z
    const/high16 v1, 0x100000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2f

    const/high16 v1, 0x200000

    if-eq p1, v1, :cond_25

    const/high16 v1, 0x400000

    if-eq p1, v1, :cond_1f

    const/high16 v1, 0x800000

    if-eq p1, v1, :cond_19

    goto :goto_39

    .line 6828
    :cond_19
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$16;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mVrImmersiveMode:Z
    invoke-static {v1, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6802(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 6829
    goto :goto_39

    .line 6825
    :cond_1f
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$16;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mVrImmersiveMode:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6802(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 6826
    goto :goto_39

    .line 6834
    :cond_25
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$16;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayPolicy;->setGearVrPersistentVrMode(Z)V

    .line 6835
    goto :goto_39

    .line 6831
    :cond_2f
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$16;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->setGearVrPersistentVrMode(Z)V

    .line 6832
    nop

    .line 6841
    :goto_39
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$16;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mVrImmersiveMode:Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6800(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v1

    if-eq v1, v0, :cond_74

    .line 6842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update VrImmersiveMode. mVrImmersiveMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$16;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mVrImmersiveMode:Z
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6800(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneWindowManagerExt"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6843
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$16;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$16;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mVrImmersiveMode:Z
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6800(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->setVrImmersiveMode(Z)V

    .line 6844
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$16;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 6846
    :cond_74
    return-void
.end method
