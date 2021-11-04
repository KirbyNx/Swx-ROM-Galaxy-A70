.class public interface abstract Lcom/android/server/sepunion/friends/action/ActionExecutable;
.super Ljava/lang/Object;
.source "ActionExecutable.java"


# virtual methods
.method public abstract execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
.end method

.method public executeOnSameThread(I)Z
    .registers 3
    .param p1, "action"    # I

    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public preExecute(Landroid/os/Bundle;II)Z
    .registers 5
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flag"    # I
    .param p3, "action"    # I

    .line 10
    const/4 v0, 0x1

    return v0
.end method
