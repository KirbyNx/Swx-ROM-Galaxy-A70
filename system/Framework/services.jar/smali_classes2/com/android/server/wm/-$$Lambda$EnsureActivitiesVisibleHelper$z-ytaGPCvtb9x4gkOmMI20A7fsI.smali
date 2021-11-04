.class public final synthetic Lcom/android/server/wm/-$$Lambda$EnsureActivitiesVisibleHelper$z-ytaGPCvtb9x4gkOmMI20A7fsI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$EnsureActivitiesVisibleHelper$z-ytaGPCvtb9x4gkOmMI20A7fsI;->f$0:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$EnsureActivitiesVisibleHelper$z-ytaGPCvtb9x4gkOmMI20A7fsI;->f$0:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p1}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->lambda$behindPopOver$0(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
