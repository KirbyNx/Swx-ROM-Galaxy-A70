.class public final synthetic Lcom/android/server/wm/-$$Lambda$YfgdxVpnF_Do_dy5J3R7NCEA0uM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$YfgdxVpnF_Do_dy5J3R7NCEA0uM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$YfgdxVpnF_Do_dy5J3R7NCEA0uM;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$YfgdxVpnF_Do_dy5J3R7NCEA0uM;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$YfgdxVpnF_Do_dy5J3R7NCEA0uM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$YfgdxVpnF_Do_dy5J3R7NCEA0uM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRecentPairWindowingMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
