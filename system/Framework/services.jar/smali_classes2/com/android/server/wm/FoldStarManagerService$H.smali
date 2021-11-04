.class final Lcom/android/server/wm/FoldStarManagerService$H;
.super Landroid/os/Handler;
.source "FoldStarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FoldStarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field private static final NOTIFY_CUSTOM_BOUNDS_PACKAGE_CHANGED:I = 0x12d


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FoldStarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/FoldStarManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/FoldStarManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 85
    iput-object p1, p0, Lcom/android/server/wm/FoldStarManagerService$H;->this$0:Lcom/android/server/wm/FoldStarManagerService;

    .line 86
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/FoldStarManagerService;Landroid/os/Looper;Lcom/android/server/wm/FoldStarManagerService$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/wm/FoldStarManagerService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/server/wm/FoldStarManagerService$1;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/FoldStarManagerService$H;-><init>(Lcom/android/server/wm/FoldStarManagerService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_7

    goto :goto_c

    .line 93
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService$H;->this$0:Lcom/android/server/wm/FoldStarManagerService;

    # invokes: Lcom/android/server/wm/FoldStarManagerService;->handleOnCustomBoundsPackageChanged(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/wm/FoldStarManagerService;->access$100(Lcom/android/server/wm/FoldStarManagerService;Landroid/os/Message;)V

    .line 96
    :goto_c
    return-void
.end method
