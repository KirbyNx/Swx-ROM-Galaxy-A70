.class public final synthetic Lcom/android/server/wm/-$$Lambda$KGcIjQ1yst4BkZmNXize9AGqGXs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/HeptConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$KGcIjQ1yst4BkZmNXize9AGqGXs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$KGcIjQ1yst4BkZmNXize9AGqGXs;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$KGcIjQ1yst4BkZmNXize9AGqGXs;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$KGcIjQ1yst4BkZmNXize9AGqGXs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$KGcIjQ1yst4BkZmNXize9AGqGXs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    check-cast p1, Landroid/app/ActivityManagerInternal;

    check-cast p2, Landroid/content/ComponentName;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Lcom/android/server/wm/ActivityRecord$Token;

    check-cast p6, Landroid/content/ComponentName;

    check-cast p7, Landroid/content/Intent;

    move-object p0, p1

    move-object p1, p2

    move p2, p3

    move p3, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, p7

    invoke-virtual/range {p0 .. p6}, Landroid/app/ActivityManagerInternal;->updateActivityUsageStatsWithIntent(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;Landroid/content/Intent;)V

    return-void
.end method
