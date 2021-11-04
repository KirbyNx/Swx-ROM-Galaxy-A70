.class public Lcom/android/server/DssController$Tools;
.super Ljava/lang/Object;
.source "DssController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DssController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tools"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDssToConfiguration(Landroid/content/res/Configuration;F)V
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "dssScale"    # F

    .line 109
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_c

    .line 110
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v0, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 112
    :cond_c
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 113
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    .line 115
    :cond_1d
    return-void
.end method

.method public static applyDssToMergedConfiguration(Landroid/util/MergedConfiguration;F)V
    .registers 9
    .param p0, "config"    # Landroid/util/MergedConfiguration;
    .param p1, "dssScale"    # F

    .line 119
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 120
    .local v0, "globalDpi":I
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 121
    .local v1, "overrideDpi":I
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 122
    .local v2, "newOverride":Landroid/content/res/Configuration;
    if-eqz v1, :cond_1e

    .line 124
    invoke-static {v1, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_26

    .line 125
    :cond_1e
    if-eqz v0, :cond_26

    .line 128
    invoke-static {v0, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 131
    :cond_26
    :goto_26
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 132
    .local v3, "globalBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 133
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 135
    .local v4, "overrideBounds":Landroid/graphics/Rect;
    if-eqz v4, :cond_4a

    .line 137
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 138
    .local v5, "newBounds":Landroid/graphics/Rect;
    invoke-static {v5, p1}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    .line 139
    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6, v5}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .end local v5    # "newBounds":Landroid/graphics/Rect;
    goto :goto_5a

    .line 140
    :cond_4a
    if-eqz v3, :cond_5a

    .line 143
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 144
    .restart local v5    # "newBounds":Landroid/graphics/Rect;
    invoke-static {v5, p1}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    .line 145
    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6, v5}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    goto :goto_5b

    .line 140
    .end local v5    # "newBounds":Landroid/graphics/Rect;
    :cond_5a
    :goto_5a
    nop

    .line 148
    :goto_5b
    invoke-virtual {p0, v2}, Landroid/util/MergedConfiguration;->setOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 149
    return-void
.end method

.method public static applyScaleToCompatFrame(Landroid/graphics/Rect;F)V
    .registers 7
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "dssScale"    # F

    .line 158
    iget v0, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    .line 159
    .local v0, "offsetX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 160
    .local v1, "offsetY":I
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 161
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 162
    int-to-float v2, v0

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    int-to-float v4, v1

    mul-float/2addr v4, p1

    add-float/2addr v4, v3

    float-to-int v3, v4

    neg-int v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 163
    return-void
.end method

.method public static scaleDpiValue(IF)I
    .registers 4
    .param p0, "dpi"    # I
    .param p1, "scale"    # F

    .line 152
    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
