.class Lcom/android/server/policy/PhoneWindowManagerExt$12;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"

# interfaces
.implements Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;


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

    .line 6164
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$12;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiFingerGesture(II)V
    .registers 4
    .param p1, "behavior"    # I
    .param p2, "reserved"    # I

    .line 6167
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$12;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 6168
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$12;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # invokes: Lcom/android/server/policy/PhoneWindowManagerExt;->handleThreeFingerTap(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6700(Lcom/android/server/policy/PhoneWindowManagerExt;II)V

    .line 6170
    :cond_d
    return-void
.end method
