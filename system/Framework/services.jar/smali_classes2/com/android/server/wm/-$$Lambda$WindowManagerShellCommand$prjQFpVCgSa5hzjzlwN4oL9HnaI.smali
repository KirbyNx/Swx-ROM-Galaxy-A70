.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerShellCommand$prjQFpVCgSa5hzjzlwN4oL9HnaI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerShellCommand$prjQFpVCgSa5hzjzlwN4oL9HnaI;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerShellCommand$prjQFpVCgSa5hzjzlwN4oL9HnaI;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->lambda$runDumpVisibleWindowViews$0(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
