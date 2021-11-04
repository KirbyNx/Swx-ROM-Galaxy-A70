.class final Lcom/android/server/inputmethod/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;,
        Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B
    .registers 6
    .param p0, "supported"    # Landroid/icu/util/ULocale;
    .param p1, "desired"    # Landroid/icu/util/ULocale;

    .line 51
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_8

    .line 52
    return v1

    .line 57
    :cond_8
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "supportedScript":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_35

    .line 63
    :cond_1d
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "supportedCountry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_33

    .line 69
    :cond_32
    return v1

    .line 65
    :cond_33
    :goto_33
    const/4 v1, 0x2

    return v1

    .line 60
    .end local v2    # "supportedCountry":Ljava/lang/String;
    :cond_35
    :goto_35
    const/4 v1, 0x1

    return v1
.end method

.method public static filterByLanguage(Ljava/util/List;Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V
    .registers 20
    .param p2, "preferredLocales"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor<",
            "TT;>;",
            "Landroid/os/LocaleList;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 153
    .local p0, "sources":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "extractor":Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;, "Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor<TT;>;"
    .local p3, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 154
    return-void

    .line 157
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->size()I

    move-result v1

    .line 158
    .local v1, "numPreferredLocales":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 159
    .local v2, "scoreboard":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;>;"
    new-array v3, v1, [B

    .line 160
    .local v3, "score":[B
    new-array v4, v1, [Landroid/icu/util/ULocale;

    .line 162
    .local v4, "preferredULocaleCache":[Landroid/icu/util/ULocale;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    .line 163
    .local v5, "sourceSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1b
    const/4 v7, 0x0

    if-ge v6, v5, :cond_91

    .line 164
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-interface {v9, v8}, Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;->get(Ljava/lang/Object;)Ljava/util/Locale;

    move-result-object v8

    .line 165
    .local v8, "locale":Ljava/util/Locale;
    if-nez v8, :cond_2d

    .line 166
    move-object/from16 v12, p2

    goto :goto_8e

    .line 169
    :cond_2d
    const/4 v10, 0x1

    .line 170
    .local v10, "canSkip":Z
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2f
    if-ge v11, v1, :cond_71

    .line 171
    move-object/from16 v12, p2

    invoke-virtual {v12, v11}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v13

    .line 172
    .local v13, "preferredLocale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_48

    .line 173
    aput-byte v7, v3, v11

    .line 174
    goto :goto_6e

    .line 176
    :cond_48
    aget-object v14, v4, v11

    if-nez v14, :cond_57

    .line 177
    nop

    .line 178
    invoke-static {v13}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v14

    .line 177
    invoke-static {v14}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v14

    aput-object v14, v4, v11

    .line 180
    :cond_57
    aget-object v14, v4, v11

    .line 182
    invoke-static {v8}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v15

    invoke-static {v15}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v15

    .line 180
    invoke-static {v14, v15}, Lcom/android/server/inputmethod/LocaleUtils;->calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B

    move-result v14

    aput-byte v14, v3, v11

    .line 183
    if-eqz v10, :cond_6e

    aget-byte v14, v3, v11

    if-eqz v14, :cond_6e

    .line 184
    const/4 v10, 0x0

    .line 170
    .end local v13    # "preferredLocale":Ljava/util/Locale;
    :cond_6e
    :goto_6e
    add-int/lit8 v11, v11, 0x1

    goto :goto_2f

    :cond_71
    move-object/from16 v12, p2

    .line 187
    .end local v11    # "j":I
    if-eqz v10, :cond_76

    .line 188
    goto :goto_8e

    .line 191
    :cond_76
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "lang":Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    .line 193
    .local v11, "bestScore":Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;
    if-nez v11, :cond_8b

    .line 194
    new-instance v13, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    invoke-direct {v13, v3, v6}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;-><init>([BI)V

    invoke-virtual {v2, v7, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8e

    .line 196
    :cond_8b
    invoke-virtual {v11, v3, v6}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->updateIfBetter([BI)V

    .line 163
    .end local v7    # "lang":Ljava/lang/String;
    .end local v8    # "locale":Ljava/util/Locale;
    .end local v10    # "canSkip":Z
    .end local v11    # "bestScore":Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;
    :goto_8e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_91
    move-object/from16 v9, p1

    move-object/from16 v12, p2

    .line 200
    .end local v6    # "i":I
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 201
    .local v6, "numEntries":I
    new-array v8, v6, [Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    .line 202
    .local v8, "result":[Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_9c
    if-ge v10, v6, :cond_a9

    .line 203
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    aput-object v11, v8, v10

    .line 202
    add-int/lit8 v10, v10, 0x1

    goto :goto_9c

    .line 205
    .end local v10    # "i":I
    :cond_a9
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 206
    array-length v10, v8

    :goto_ad
    if-ge v7, v10, :cond_bf

    aget-object v11, v8, v7

    .line 207
    .local v11, "entry":Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;
    iget v13, v11, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v14, p3

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v11    # "entry":Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;
    add-int/lit8 v7, v7, 0x1

    goto :goto_ad

    .line 209
    :cond_bf
    move-object/from16 v14, p3

    return-void
.end method
