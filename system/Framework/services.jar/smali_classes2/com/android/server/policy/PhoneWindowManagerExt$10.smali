.class Lcom/android/server/policy/PhoneWindowManagerExt$10;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;->registerDisplayListener()V
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

    .line 5878
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$10;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(I)V
    .registers 6
    .param p1, "transit"    # I

    .line 5887
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$10;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    # invokes: Lcom/android/server/policy/PhoneWindowManagerExt;->handleStartTransitionForKeyguardLw(IJI)I
    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6600(Lcom/android/server/policy/PhoneWindowManagerExt;IJI)I

    .line 5888
    return-void
.end method

.method public onAppTransitionStartingLocked(IJJJ)I
    .registers 10
    .param p1, "transit"    # I
    .param p2, "duration"    # J
    .param p4, "statusBarAnimationStartTime"    # J
    .param p6, "statusBarAnimationDuration"    # J

    .line 5882
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$10;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v1, 0x2

    # invokes: Lcom/android/server/policy/PhoneWindowManagerExt;->handleStartTransitionForKeyguardLw(IJI)I
    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6600(Lcom/android/server/policy/PhoneWindowManagerExt;IJI)I

    move-result v0

    return v0
.end method
