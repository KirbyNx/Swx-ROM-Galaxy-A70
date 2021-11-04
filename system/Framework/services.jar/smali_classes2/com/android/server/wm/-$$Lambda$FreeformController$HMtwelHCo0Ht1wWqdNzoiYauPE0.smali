.class public final synthetic Lcom/android/server/wm/-$$Lambda$FreeformController$HMtwelHCo0Ht1wWqdNzoiYauPE0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(ZZFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$HMtwelHCo0Ht1wWqdNzoiYauPE0;->f$0:Z

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$HMtwelHCo0Ht1wWqdNzoiYauPE0;->f$1:Z

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$HMtwelHCo0Ht1wWqdNzoiYauPE0;->f$2:F

    iput p4, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$HMtwelHCo0Ht1wWqdNzoiYauPE0;->f$3:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$HMtwelHCo0Ht1wWqdNzoiYauPE0;->f$0:Z

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$HMtwelHCo0Ht1wWqdNzoiYauPE0;->f$1:Z

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$HMtwelHCo0Ht1wWqdNzoiYauPE0;->f$2:F

    iget v3, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$HMtwelHCo0Ht1wWqdNzoiYauPE0;->f$3:F

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/wm/FreeformController;->lambda$performDisplayOverrideConfigUpdate$1(ZZFFLcom/android/server/wm/Task;)V

    return-void
.end method
