.class Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;
.super Ljava/lang/Object;
.source "KeyboardInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/KeyboardInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyEventHolder"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x20

.field private static final sPool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dispatchTime:J

.field public event:Landroid/view/KeyEvent;

.field public next:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

.field public policyFlags:I

.field public previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 175
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->sPool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Landroid/view/KeyEvent;IJ)Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;
    .registers 6
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "policyFlags"    # I
    .param p2, "dispatchTime"    # J

    .line 185
    sget-object v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->sPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 186
    .local v0, "holder":Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;
    if-nez v0, :cond_10

    .line 187
    new-instance v1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    invoke-direct {v1}, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;-><init>()V

    move-object v0, v1

    .line 189
    :cond_10
    invoke-static {p0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    .line 190
    iput p1, v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    .line 191
    iput-wide p2, v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    .line 192
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    .line 198
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    .line 199
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    .line 200
    iput-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->next:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 201
    iput-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 202
    sget-object v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->sPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method
