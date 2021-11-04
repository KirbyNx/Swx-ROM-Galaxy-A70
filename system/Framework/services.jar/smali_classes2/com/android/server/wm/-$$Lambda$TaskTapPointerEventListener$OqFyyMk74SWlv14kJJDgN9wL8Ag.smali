.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskTapPointerEventListener$OqFyyMk74SWlv14kJJDgN9wL8Ag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$TaskTapPointerEventListener$OqFyyMk74SWlv14kJJDgN9wL8Ag;->f$0:I

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$TaskTapPointerEventListener$OqFyyMk74SWlv14kJJDgN9wL8Ag;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$TaskTapPointerEventListener$OqFyyMk74SWlv14kJJDgN9wL8Ag;->f$0:I

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$TaskTapPointerEventListener$OqFyyMk74SWlv14kJJDgN9wL8Ag;->f$1:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->lambda$onPointerEvent$0(IILcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
