.class Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;
.super Lcom/android/server/wm/DisplayAreaPolicy;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation


# static fields
.field private static final LEAF_TYPE_IME_CONTAINERS:I = 0x2

.field private static final LEAF_TYPE_TASK_CONTAINERS:I = 0x1

.field private static final LEAF_TYPE_TOKENS:I


# instance fields
.field private final mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

.field private final mAreas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxWindowLayer:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayArea$Root;Lcom/android/server/wm/DisplayArea;Ljava/util/List;Ljava/util/ArrayList;)V
    .registers 11
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "content"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "root"    # Lcom/android/server/wm/DisplayArea$Root;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "Lcom/android/server/wm/DisplayContent;",
            "Lcom/android/server/wm/DisplayArea$Root;",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p4, "imeContainer":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<+Lcom/android/server/wm/WindowContainer;>;"
    .local p5, "taskDisplayAreas":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskDisplayArea;>;"
    .local p6, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/DisplayAreaPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayArea$Root;Lcom/android/server/wm/DisplayArea;Ljava/util/List;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mMaxWindowLayer:I

    .line 200
    new-array v0, v0, [Lcom/android/server/wm/DisplayArea$Tokens;

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    .line 206
    iput-object p6, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mFeatures:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mAreas:Ljava/util/Map;

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 209
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mAreas:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 211
    .end local v0    # "i":I
    :cond_3c
    return-void
.end method

.method private addTaskDisplayAreasToLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;I)V
    .registers 7
    .param p1, "parentPendingArea"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    .param p2, "layer"    # I

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mTaskDisplayAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 284
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_23

    .line 285
    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 286
    .local v2, "leafArea":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mTaskDisplayAreas:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayArea;

    iput-object v3, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    .line 287
    iput p2, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 288
    iget-object v3, p1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v2    # "leafArea":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 290
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method private static typeOfLayer(Lcom/android/server/policy/WindowManagerPolicy;I)I
    .registers 4
    .param p0, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p1, "layer"    # I

    .line 315
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 316
    const/4 v0, 0x1

    return v0

    .line 317
    :cond_5
    const/16 v1, 0x7db

    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v1

    if-eq p1, v1, :cond_18

    const/16 v1, 0x7dc

    .line 318
    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v1

    if-ne p1, v1, :cond_16

    goto :goto_18

    .line 321
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 319
    :cond_18
    :goto_18
    return v0
.end method


# virtual methods
.method public addWindow(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    .line 295
    .local v0, "area":Lcom/android/server/wm/DisplayArea$Tokens;
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayArea$Tokens;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 296
    return-void
.end method

.method public attachDisplayAreas()V
    .registers 12

    .line 237
    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mMaxWindowLayer:I

    new-array v0, v0, [Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 238
    .local v0, "areaForLayer":[Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    new-instance v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 239
    .local v1, "root":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 242
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    if-ge v5, v4, :cond_4e

    .line 243
    const/4 v6, 0x0

    .line 244
    .local v6, "featureArea":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    const/4 v7, 0x0

    .local v7, "layer":I
    :goto_19
    iget v8, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mMaxWindowLayer:I

    if-ge v7, v8, :cond_4b

    .line 245
    iget-object v8, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 246
    .local v8, "feature":Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
    # getter for: Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mWindowLayers:[Z
    invoke-static {v8}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->access$100(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)[Z

    move-result-object v9

    aget-boolean v9, v9, v7

    if-eqz v9, :cond_47

    .line 247
    if-eqz v6, :cond_35

    iget-object v9, v6, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v10, v0, v7

    if-eq v9, v10, :cond_44

    .line 250
    :cond_35
    new-instance v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v10, v0, v7

    invoke-direct {v9, v8, v7, v10}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    move-object v6, v9

    .line 251
    aget-object v9, v0, v7

    iget-object v9, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_44
    aput-object v6, v0, v7

    goto :goto_48

    .line 255
    :cond_47
    const/4 v6, 0x0

    .line 244
    .end local v8    # "feature":Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
    :goto_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 242
    .end local v6    # "featureArea":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    .end local v7    # "layer":I
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 260
    .end local v5    # "i":I
    :cond_4e
    const/4 v5, 0x0

    .line 261
    .local v5, "leafArea":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    const/4 v6, 0x0

    .line 262
    .local v6, "leafType":I
    const/4 v7, 0x0

    .restart local v7    # "layer":I
    :goto_51
    iget v8, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mMaxWindowLayer:I

    if-ge v7, v8, :cond_8c

    .line 263
    iget-object v8, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v8, v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->typeOfLayer(Lcom/android/server/policy/WindowManagerPolicy;I)I

    move-result v8

    .line 264
    .local v8, "type":I
    if-eqz v5, :cond_67

    iget-object v9, v5, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v10, v0, v7

    if-ne v9, v10, :cond_67

    if-eq v8, v6, :cond_87

    .line 266
    :cond_67
    new-instance v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v10, v0, v7

    invoke-direct {v9, v2, v7, v10}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    move-object v5, v9

    .line 267
    aget-object v9, v0, v7

    iget-object v9, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    move v6, v8

    .line 269
    const/4 v9, 0x1

    if-ne v6, v9, :cond_80

    .line 270
    aget-object v9, v0, v7

    invoke-direct {p0, v9, v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->addTaskDisplayAreasToLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;I)V

    goto :goto_87

    .line 271
    :cond_80
    const/4 v9, 0x2

    if-ne v6, v9, :cond_87

    .line 272
    iget-object v9, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mImeContainer:Lcom/android/server/wm/DisplayArea;

    iput-object v9, v5, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    .line 275
    :cond_87
    :goto_87
    iput v7, v5, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 262
    .end local v8    # "type":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    .line 277
    .end local v7    # "layer":I
    :cond_8c
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->computeMaxLayer()I

    .line 278
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mRoot:Lcom/android/server/wm/DisplayArea$Root;

    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    iget-object v8, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mAreas:Ljava/util/Map;

    invoke-virtual {v1, v2, v7, v3, v8}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V

    .line 279
    return-void
.end method

.method findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 4
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 300
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result v0

    .line 301
    .local v0, "windowLayerFromType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 304
    :cond_a
    iget-boolean v1, p1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v1, :cond_12

    .line 305
    iget v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mMaxWindowLayer:I

    add-int/lit8 v0, v1, -0x1

    .line 307
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Ljava/util/List;
    .registers 3
    .param p1, "feature"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mAreas:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
