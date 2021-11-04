.class public final synthetic Lcom/android/server/ipm/chimera/-$$Lambda$pVe71H_sWQhI5S21pL_o_O_Z8Ys;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ipm/chimera/SystemRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ipm/chimera/SystemRepository;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ipm/chimera/-$$Lambda$pVe71H_sWQhI5S21pL_o_O_Z8Ys;->f$0:Lcom/android/server/ipm/chimera/SystemRepository;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/ipm/chimera/-$$Lambda$pVe71H_sWQhI5S21pL_o_O_Z8Ys;->f$0:Lcom/android/server/ipm/chimera/SystemRepository;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/server/ipm/chimera/SystemRepository;->getLongLiveProcessesForUser(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
