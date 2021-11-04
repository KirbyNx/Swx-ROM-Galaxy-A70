.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$CDcei0uDpM4HG8RkKFuRjHUyMNE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$CDcei0uDpM4HG8RkKFuRjHUyMNE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$CDcei0uDpM4HG8RkKFuRjHUyMNE;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$CDcei0uDpM4HG8RkKFuRjHUyMNE;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$CDcei0uDpM4HG8RkKFuRjHUyMNE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$CDcei0uDpM4HG8RkKFuRjHUyMNE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->lambda$removeTaskByIdIfNeededLocked$4(I)[Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
