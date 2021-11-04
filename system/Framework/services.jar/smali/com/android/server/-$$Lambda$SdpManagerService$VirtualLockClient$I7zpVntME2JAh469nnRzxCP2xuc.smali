.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$I7zpVntME2JAh469nnRzxCP2xuc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$I7zpVntME2JAh469nnRzxCP2xuc;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$I7zpVntME2JAh469nnRzxCP2xuc;->f$0:I

    check-cast p1, Lcom/android/internal/widget/ILockSettings;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$VirtualLockClient;->lambda$clearLock$1(ILcom/android/internal/widget/ILockSettings;)V

    return-void
.end method
