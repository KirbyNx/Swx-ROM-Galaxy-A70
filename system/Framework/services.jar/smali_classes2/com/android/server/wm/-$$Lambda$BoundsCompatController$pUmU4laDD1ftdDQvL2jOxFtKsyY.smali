.class public final synthetic Lcom/android/server/wm/-$$Lambda$BoundsCompatController$pUmU4laDD1ftdDQvL2jOxFtKsyY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$BoundsCompatController$pUmU4laDD1ftdDQvL2jOxFtKsyY;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$BoundsCompatController$pUmU4laDD1ftdDQvL2jOxFtKsyY;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$BoundsCompatController$pUmU4laDD1ftdDQvL2jOxFtKsyY;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$BoundsCompatController$pUmU4laDD1ftdDQvL2jOxFtKsyY;->f$1:Z

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/BoundsCompatController;->lambda$clearSizeCompatMode$0(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
