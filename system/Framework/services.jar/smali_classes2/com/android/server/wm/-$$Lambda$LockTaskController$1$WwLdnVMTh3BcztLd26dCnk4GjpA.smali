.class public final synthetic Lcom/android/server/wm/-$$Lambda$LockTaskController$1$WwLdnVMTh3BcztLd26dCnk4GjpA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LockTaskController$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LockTaskController$1;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$1$WwLdnVMTh3BcztLd26dCnk4GjpA;->f$0:Lcom/android/server/wm/LockTaskController$1;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$1$WwLdnVMTh3BcztLd26dCnk4GjpA;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$1$WwLdnVMTh3BcztLd26dCnk4GjpA;->f$0:Lcom/android/server/wm/LockTaskController$1;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$1$WwLdnVMTh3BcztLd26dCnk4GjpA;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LockTaskController$1;->lambda$onDismissSucceeded$0$LockTaskController$1(I)V

    return-void
.end method
