.class public final synthetic Lcom/android/server/ipm/chimera/-$$Lambda$ConservativePolicyHandler$bRyyw2haMYaOB-ZFPswB_GDSvwA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$ConservativePolicyHandler$bRyyw2haMYaOB-ZFPswB_GDSvwA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/ipm/chimera/-$$Lambda$ConservativePolicyHandler$bRyyw2haMYaOB-ZFPswB_GDSvwA;

    invoke-direct {v0}, Lcom/android/server/ipm/chimera/-$$Lambda$ConservativePolicyHandler$bRyyw2haMYaOB-ZFPswB_GDSvwA;-><init>()V

    sput-object v0, Lcom/android/server/ipm/chimera/-$$Lambda$ConservativePolicyHandler$bRyyw2haMYaOB-ZFPswB_GDSvwA;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$ConservativePolicyHandler$bRyyw2haMYaOB-ZFPswB_GDSvwA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 4

    check-cast p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    invoke-static {p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->lambda$calculateKillGain$0(Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;)J

    move-result-wide v0

    return-wide v0
.end method
