.class public interface abstract Lcom/android/server/wm/IController;
.super Ljava/lang/Object;
.source "IController.java"


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 31
    return-void
.end method

.method public abstract initialize()V
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 27
    return-void
.end method
