.class public Lcom/oneplus/util/OpBatteryUtils;
.super Ljava/lang/Object;
.source "OpBatteryUtils.java"


# direct methods
.method public static getBatteryMaskInsideResId(I)I
    .locals 2

    if-nez p0, :cond_0

    .line 39
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_0:I

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x5

    if-lez p0, :cond_1

    if-gt p0, v0, :cond_1

    .line 41
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_5:I

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    if-le p0, v0, :cond_2

    if-gt p0, v1, :cond_2

    .line 43
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_10:I

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xf

    if-le p0, v1, :cond_3

    if-gt p0, v0, :cond_3

    .line 45
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_15:I

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x14

    if-le p0, v0, :cond_4

    if-gt p0, v1, :cond_4

    .line 47
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_20:I

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x19

    if-le p0, v1, :cond_5

    if-gt p0, v0, :cond_5

    .line 49
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_25:I

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x1e

    if-le p0, v0, :cond_6

    if-gt p0, v1, :cond_6

    .line 51
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_30:I

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x23

    if-le p0, v1, :cond_7

    if-gt p0, v0, :cond_7

    .line 53
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_35:I

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x28

    if-le p0, v0, :cond_8

    if-gt p0, v1, :cond_8

    .line 55
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_40:I

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x2d

    if-le p0, v1, :cond_9

    if-gt p0, v0, :cond_9

    .line 57
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_45:I

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x32

    if-le p0, v0, :cond_a

    if-gt p0, v1, :cond_a

    .line 59
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_50:I

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x37

    if-le p0, v1, :cond_b

    if-gt p0, v0, :cond_b

    .line 61
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_55:I

    goto :goto_0

    :cond_b
    const/16 v1, 0x3c

    if-le p0, v0, :cond_c

    if-gt p0, v1, :cond_c

    .line 63
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_60:I

    goto :goto_0

    :cond_c
    const/16 v0, 0x41

    if-le p0, v1, :cond_d

    if-gt p0, v0, :cond_d

    .line 65
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_65:I

    goto :goto_0

    :cond_d
    const/16 v1, 0x46

    if-le p0, v0, :cond_e

    if-gt p0, v1, :cond_e

    .line 67
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_70:I

    goto :goto_0

    :cond_e
    const/16 v0, 0x4b

    if-le p0, v1, :cond_f

    if-gt p0, v0, :cond_f

    .line 69
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_75:I

    goto :goto_0

    :cond_f
    if-le p0, v0, :cond_10

    const/16 v0, 0x50

    if-gt p0, v0, :cond_10

    .line 71
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_80:I

    goto :goto_0

    :cond_10
    const/16 v0, 0x50

    if-le p0, v0, :cond_11

    const/16 v0, 0x55

    if-gt p0, v0, :cond_11

    .line 73
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_85:I

    goto :goto_0

    :cond_11
    const/16 v0, 0x55

    if-le p0, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    .line 75
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_90:I

    goto :goto_0

    :cond_12
    const/16 v0, 0x5a

    if-le p0, v0, :cond_13

    const/16 v0, 0x5f

    if-gt p0, v0, :cond_13

    .line 77
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_95:I

    goto :goto_0

    :cond_13
    const/16 v0, 0x5f

    if-le p0, v0, :cond_14

    .line 79
    sget p0, Lcom/android/systemui/R$drawable;->op_battery_mask_100:I

    goto :goto_0

    :cond_14
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDashImageResId(I)I
    .locals 2

    if-nez p0, :cond_0

    .line 10
    sget p0, Lcom/android/systemui/R$drawable;->op_dash_charging_state_0:I

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xa

    if-lez p0, :cond_1

    if-gt p0, v0, :cond_1

    .line 12
    sget p0, Lcom/android/systemui/R$drawable;->op_dash_charging_state_10:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    if-le p0, v0, :cond_2

    if-gt p0, v1, :cond_2

    .line 14
    sget p0, Lcom/android/systemui/R$drawable;->op_dash_charging_state_20:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x1e

    if-le p0, v1, :cond_3

    if-gt p0, v0, :cond_3

    .line 16
    sget p0, Lcom/android/systemui/R$drawable;->op_dash_charging_state_30:I

    goto :goto_0

    :cond_3
    const/16 v1, 0x28

    if-le p0, v0, :cond_4

    if-gt p0, v1, :cond_4

    .line 18
    sget p0, Lcom/android/systemui/R$drawable;->op_dash_charging_state_40:I

    goto :goto_0

    :cond_4
    const/16 v0, 0x32

    if-le p0, v1, :cond_5

    if-gt p0, v0, :cond_5

    .line 20
    sget p0, Lcom/android/systemui/R$drawable;->op_dash_charging_state_50:I

    goto :goto_0

    :cond_5
    const/16 v1, 0x3c

    if-le p0, v0, :cond_6

    if-gt p0, v1, :cond_6

    .line 22
    sget p0, Lcom/android/systemui/R$drawable;->op_dash_charging_state_60:I

    goto :goto_0

    :cond_6
    const/16 v0, 0x46

    if-le p0, v1, :cond_7

    if-gt p0, v0, :cond_7

    .line 24
    sget p0, Lcom/android/systemui/R$drawable;->op_dash_charging_state_70:I

    goto :goto_0

    :cond_7
    const/16 v1, 0x50

    if-le p0, v0, :cond_8

    if-gt p0, v1, :cond_8

    .line 26
    sget p0, Lcom/android/systemui/R$drawable;->op_dash_charging_state_80:I

    goto :goto_0

    :cond_8
    const/16 v0, 0x5a

    if-le p0, v1, :cond_9

    if-gt p0, v0, :cond_9

    .line 28
    sget p0, Lcom/android/systemui/R$drawable;->op_dash_charging_state_90:I

    goto :goto_0

    :cond_9
    if-le p0, v0, :cond_a

    const/16 v0, 0x64

    if-gt p0, v0, :cond_a

    .line 30
    sget p0, Lcom/android/systemui/R$drawable;->op_dash_charging_state_100:I

    goto :goto_0

    :cond_a
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
