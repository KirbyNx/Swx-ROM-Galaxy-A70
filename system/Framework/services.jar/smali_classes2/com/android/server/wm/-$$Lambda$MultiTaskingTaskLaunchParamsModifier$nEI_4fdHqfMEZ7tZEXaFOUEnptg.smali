.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiTaskingTaskLaunchParamsModifier$nEI_4fdHqfMEZ7tZEXaFOUEnptg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$MultiTaskingTaskLaunchParamsModifier$nEI_4fdHqfMEZ7tZEXaFOUEnptg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$MultiTaskingTaskLaunchParamsModifier$nEI_4fdHqfMEZ7tZEXaFOUEnptg;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$MultiTaskingTaskLaunchParamsModifier$nEI_4fdHqfMEZ7tZEXaFOUEnptg;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$MultiTaskingTaskLaunchParamsModifier$nEI_4fdHqfMEZ7tZEXaFOUEnptg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MultiTaskingTaskLaunchParamsModifier$nEI_4fdHqfMEZ7tZEXaFOUEnptg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Rect;

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->lambda$nEI_4fdHqfMEZ7tZEXaFOUEnptg(Lcom/android/server/wm/Task;Ljava/lang/String;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method
