.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$ActiveAdmin$UjhGsndXbfnmx5tCnLRWDR1J0oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$ActiveAdmin$UjhGsndXbfnmx5tCnLRWDR1J0oo;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$ActiveAdmin$UjhGsndXbfnmx5tCnLRWDR1J0oo;->f$0:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->lambda$getGlobalUserRestrictions$1(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method
