.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$Gg2zXLB3B6abHrVnLIb_VFcGT-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$Gg2zXLB3B6abHrVnLIb_VFcGT-Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$Gg2zXLB3B6abHrVnLIb_VFcGT-Y;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$Gg2zXLB3B6abHrVnLIb_VFcGT-Y;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$Gg2zXLB3B6abHrVnLIb_VFcGT-Y;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$Gg2zXLB3B6abHrVnLIb_VFcGT-Y;

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

    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->lambda$startPairAppsLocked$1(I)[Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
