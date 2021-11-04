.class Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TintValueAnimator"
.end annotation


# instance fields
.field private max:[F

.field private min:[F


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1136
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    return-void
.end method

.method public static varargs ofMatrix(Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;[Ljava/lang/Object;)Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    .registers 7
    .param p0, "evaluator"    # Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;
    .param p1, "values"    # [Ljava/lang/Object;

    .line 1142
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    invoke-direct {v0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;-><init>()V

    .line 1143
    .local v0, "anim":Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1144
    invoke-virtual {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1145
    if-eqz p1, :cond_34

    array-length v1, p1

    if-nez v1, :cond_11

    goto :goto_34

    .line 1148
    :cond_11
    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, [F

    .line 1149
    .local v1, "m":[F
    array-length v2, v1

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    .line 1150
    array-length v2, v1

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    .line 1151
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    array-length v3, v1

    if-ge v2, v3, :cond_33

    .line 1152
    iget-object v3, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    aput v4, v3, v2

    .line 1153
    iget-object v3, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    const/4 v4, 0x1

    aput v4, v3, v2

    .line 1151
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1155
    .end local v2    # "i":I
    :cond_33
    return-object v0

    .line 1146
    .end local v1    # "m":[F
    :cond_34
    :goto_34
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getMax()[F
    .registers 2

    .line 1174
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    return-object v0
.end method

.method public getMin()[F
    .registers 2

    .line 1170
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    return-object v0
.end method

.method public updateMinMaxComponents()V
    .registers 6

    .line 1159
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1160
    .local v0, "value":[F
    if-nez v0, :cond_9

    .line 1161
    return-void

    .line 1163
    :cond_9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 1164
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    aget v3, v2, v1

    aget v4, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v2, v1

    .line 1165
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    aget v3, v2, v1

    aget v4, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v2, v1

    .line 1163
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1167
    .end local v1    # "i":I
    :cond_28
    return-void
.end method
