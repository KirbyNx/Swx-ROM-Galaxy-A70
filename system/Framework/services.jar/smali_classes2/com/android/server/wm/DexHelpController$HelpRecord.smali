.class interface abstract Lcom/android/server/wm/DexHelpController$HelpRecord;
.super Ljava/lang/Object;
.source "DexHelpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexHelpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "HelpRecord"
.end annotation


# virtual methods
.method public abstract addClientTransactionItemIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/app/servertransaction/ClientTransaction;)Z
.end method

.method public abstract dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract isCountExceed()Z
.end method

.method public abstract needToShow()Z
.end method

.method public abstract reportShown(Landroid/os/IBinder;)V
.end method

.method public abstract retrieveSettings(I)V
.end method

.method public abstract setHandler(Lcom/android/server/wm/DexHelpController$H;)V
.end method

.method public abstract timeout()V
.end method
