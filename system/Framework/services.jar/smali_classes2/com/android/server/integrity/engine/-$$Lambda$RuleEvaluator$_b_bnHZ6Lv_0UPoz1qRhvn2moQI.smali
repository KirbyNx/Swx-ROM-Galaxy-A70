.class public final synthetic Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$_b_bnHZ6Lv_0UPoz1qRhvn2moQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$_b_bnHZ6Lv_0UPoz1qRhvn2moQI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$_b_bnHZ6Lv_0UPoz1qRhvn2moQI;

    invoke-direct {v0}, Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$_b_bnHZ6Lv_0UPoz1qRhvn2moQI;-><init>()V

    sput-object v0, Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$_b_bnHZ6Lv_0UPoz1qRhvn2moQI;->INSTANCE:Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$_b_bnHZ6Lv_0UPoz1qRhvn2moQI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/content/integrity/Rule;

    invoke-static {p1}, Lcom/android/server/integrity/engine/RuleEvaluator;->lambda$evaluateRules$1(Landroid/content/integrity/Rule;)Z

    move-result p1

    return p1
.end method
