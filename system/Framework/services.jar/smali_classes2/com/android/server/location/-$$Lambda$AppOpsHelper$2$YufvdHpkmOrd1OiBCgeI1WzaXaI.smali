.class public final synthetic Lcom/android/server/location/-$$Lambda$AppOpsHelper$2$YufvdHpkmOrd1OiBCgeI1WzaXaI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/-$$Lambda$AppOpsHelper$2$YufvdHpkmOrd1OiBCgeI1WzaXaI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$AppOpsHelper$2$YufvdHpkmOrd1OiBCgeI1WzaXaI;

    invoke-direct {v0}, Lcom/android/server/location/-$$Lambda$AppOpsHelper$2$YufvdHpkmOrd1OiBCgeI1WzaXaI;-><init>()V

    sput-object v0, Lcom/android/server/location/-$$Lambda$AppOpsHelper$2$YufvdHpkmOrd1OiBCgeI1WzaXaI;->INSTANCE:Lcom/android/server/location/-$$Lambda$AppOpsHelper$2$YufvdHpkmOrd1OiBCgeI1WzaXaI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/server/location/AppOpsHelper;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/server/location/AppOpsHelper$2;->lambda$onOpChanged$0(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
