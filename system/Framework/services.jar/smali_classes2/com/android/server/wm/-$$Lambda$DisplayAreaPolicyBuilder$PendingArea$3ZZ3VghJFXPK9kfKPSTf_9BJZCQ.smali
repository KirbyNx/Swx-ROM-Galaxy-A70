.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayAreaPolicyBuilder$PendingArea$3ZZ3VghJFXPK9kfKPSTf_9BJZCQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayAreaPolicyBuilder$PendingArea$3ZZ3VghJFXPK9kfKPSTf_9BJZCQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayAreaPolicyBuilder$PendingArea$3ZZ3VghJFXPK9kfKPSTf_9BJZCQ;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$DisplayAreaPolicyBuilder$PendingArea$3ZZ3VghJFXPK9kfKPSTf_9BJZCQ;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$DisplayAreaPolicyBuilder$PendingArea$3ZZ3VghJFXPK9kfKPSTf_9BJZCQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayAreaPolicyBuilder$PendingArea$3ZZ3VghJFXPK9kfKPSTf_9BJZCQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    invoke-static {p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->lambda$instantiateChildren$0(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)I

    move-result p1

    return p1
.end method
