.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppTransitionController$r-swbqenftogMPWUl7z152DhSlI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;

.field public final synthetic f$1:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$r-swbqenftogMPWUl7z152DhSlI;->f$0:Landroid/util/ArraySet;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$r-swbqenftogMPWUl7z152DhSlI;->f$1:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$r-swbqenftogMPWUl7z152DhSlI;->f$0:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$r-swbqenftogMPWUl7z152DhSlI;->f$1:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/AppTransitionController;->lambda$handleAppTransitionReady$0(Landroid/util/ArraySet;Landroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
