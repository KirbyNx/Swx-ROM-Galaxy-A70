.class Lcom/android/server/policy/PhoneWindowManagerExt$11;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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

.field final synthetic val$appTransitionListenerForDex:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 5891
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$11;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$11;->val$appTransitionListenerForDex:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 5898
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 5911
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 5906
    return-void
.end method
