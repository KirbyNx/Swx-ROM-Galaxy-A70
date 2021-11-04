.class Lcom/android/server/soundtrigger_middleware/ObjectPrinter;
.super Ljava/lang/Object;
.source "ObjectPrinter.java"


# static fields
.field public static final kDefaultMaxCollectionLength:I = 0x10


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static print(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static print(Ljava/lang/Object;ZI)Ljava/lang/String;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "deep"    # Z
    .param p2, "maxCollectionLength"    # I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;ZI)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static print(Ljava/lang/StringBuilder;Ljava/lang/Object;ZI)V
    .registers 15
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "deep"    # Z
    .param p3, "maxCollectionLength"    # I

    .line 99
    if-nez p1, :cond_9

    .line 100
    :try_start_2
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    return-void

    .line 103
    :cond_9
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    return-void

    .line 107
    :cond_15
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_21

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    return-void

    .line 111
    :cond_21
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_35

    .line 112
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    return-void

    .line 117
    :cond_35
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_49

    .line 118
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    return-void

    .line 124
    :cond_49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 126
    .local v0, "cls":Ljava/lang/Class;
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_53} :catch_13b

    const-string v2, " ]"

    const-string v3, "[ "

    const-string v4, " entries)"

    const-string v5, ", "

    const-string v6, "... (+"

    if-eqz v1, :cond_9a

    .line 127
    :try_start_5f
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .line 128
    .local v1, "collection":Ljava/util/Collection;
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    .line 130
    .local v3, "length":I
    const/4 v7, 0x0

    .line 131
    .local v7, "isLong":Z
    const/4 v8, 0x0

    .line 132
    .local v8, "i":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_89

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 133
    .local v10, "child":Ljava/lang/Object;
    if-lez v8, :cond_7e

    .line 134
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_7e
    if-lt v8, p3, :cond_82

    .line 137
    const/4 v7, 0x1

    .line 138
    goto :goto_89

    .line 140
    :cond_82
    invoke-static {p0, v10, p2, p3}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;ZI)V

    .line 141
    nop

    .end local v10    # "child":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    .line 142
    goto :goto_6f

    .line 143
    :cond_89
    :goto_89
    if-eqz v7, :cond_96

    .line 144
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    sub-int v5, v3, p3

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_96
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    return-void

    .line 152
    .end local v1    # "collection":Ljava/util/Collection;
    .end local v3    # "length":I
    .end local v7    # "isLong":Z
    .end local v8    # "i":I
    :cond_9a
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 153
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 154
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v2, "< "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    .line 156
    .local v2, "length":I
    const/4 v3, 0x0

    .line 157
    .local v3, "isLong":Z
    const/4 v7, 0x0

    .line 158
    .local v7, "i":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 159
    .local v9, "child":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    if-lez v7, :cond_c9

    .line 160
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_c9
    if-lt v7, p3, :cond_cd

    .line 163
    const/4 v3, 0x1

    .line 164
    goto :goto_e4

    .line 166
    :cond_cd
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-static {p0, v10, p2, p3}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;ZI)V

    .line 167
    const-string v10, ": "

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {p0, v10, p2, p3}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;ZI)V

    .line 169
    nop

    .end local v9    # "child":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    add-int/lit8 v7, v7, 0x1

    .line 170
    goto :goto_b8

    .line 171
    :cond_e4
    :goto_e4
    if-eqz v3, :cond_f1

    .line 172
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    sub-int v5, v2, p3

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_f1
    const-string v4, " >"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    return-void

    .line 180
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v2    # "length":I
    .end local v3    # "isLong":Z
    .end local v7    # "i":I
    :cond_f7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 181
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 183
    .local v1, "length":I
    const/4 v3, 0x0

    .line 184
    .restart local v3    # "isLong":Z
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_106
    if-ge v7, v1, :cond_11b

    .line 185
    if-lez v7, :cond_10d

    .line 186
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_10d
    if-lt v7, p3, :cond_111

    .line 189
    const/4 v3, 0x1

    .line 190
    goto :goto_11b

    .line 192
    :cond_111
    invoke-static {p1, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, v8, p2, p3}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;ZI)V

    .line 184
    add-int/lit8 v7, v7, 0x1

    goto :goto_106

    .line 194
    .end local v7    # "i":I
    :cond_11b
    :goto_11b
    if-eqz v3, :cond_128

    .line 195
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    sub-int v5, v1, p3

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_128
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    return-void

    .line 203
    .end local v1    # "length":I
    .end local v3    # "isLong":Z
    :cond_12c
    if-nez p2, :cond_136

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    return-void

    .line 207
    :cond_136
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->printPublicFields(Ljava/lang/StringBuilder;Ljava/lang/Object;ZI)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_139} :catch_13b

    .line 210
    .end local v0    # "cls":Ljava/lang/Class;
    nop

    .line 211
    return-void

    .line 208
    :catch_13b
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static printPublicFields(Ljava/lang/Object;ZI)Ljava/lang/String;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "deep"    # Z
    .param p2, "maxCollectionLength"    # I

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->printPublicFields(Ljava/lang/StringBuilder;Ljava/lang/Object;ZI)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static printPublicFields(Ljava/lang/StringBuilder;Ljava/lang/Object;ZI)V
    .registers 12
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "deep"    # Z
    .param p3, "maxCollectionLength"    # I

    .line 227
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 228
    .local v0, "cls":Ljava/lang/Class;
    const-string/jumbo v1, "{ "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const/4 v1, 0x1

    .line 231
    .local v1, "first":Z
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_40

    aget-object v5, v2, v4

    .line 232
    .local v5, "fld":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 233
    .local v6, "mod":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_3d

    and-int/lit8 v7, v6, 0x8

    if-nez v7, :cond_3d

    .line 234
    if-eqz v1, :cond_25

    .line 235
    const/4 v1, 0x0

    goto :goto_2a

    .line 237
    :cond_25
    const-string v7, ", "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :goto_2a
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v7, ": "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7, p2, p3}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;ZI)V

    .line 231
    .end local v5    # "fld":Ljava/lang/reflect/Field;
    .end local v6    # "mod":I
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 244
    :cond_40
    const-string v2, " }"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_47

    .line 247
    nop

    .line 248
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "first":Z
    return-void

    .line 245
    :catch_47
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
