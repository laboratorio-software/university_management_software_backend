from django.db import models

MONDAY = "LUNES"
TUESDAY = "MARTES"
WEDNESDAY = "MIERCOLES"
THURSDAY = "JUEVES"
FRIDAY = "VIERNES"
SATURDAY = "SABADO"
DAYS = [
    (MONDAY, "Lunes"),
    (TUESDAY, "Martes"),
    (WEDNESDAY, "Miercoles"),
    (THURSDAY, "Jueves"),
    (FRIDAY, "Viernes"),
    (SATURDAY, "Sabado"),
]

SEVEN_AM = "7:00 AM"
EIGHT_AM = "8:00 AM"
NINE_AM = "9:00 AM"
TEN_AM = "10:00 AM"
ELEVEN_AM = "11:00 AM"
TWELVE_M = "12:00 M"
ONE_PM = "1:00 PM"
TWO_PM = "2:00 PM"
THREE_PM = "3:00 PM"
FOUR_PM = "4:00 PM"
FIVE_PM = "5:00 PM"
SIX_PM = "6:00 PM"
SEVEN_PM = "7:00 PM"
EIGHT_PM = "8:00 PM"
NINE_PM = "9:00 PM"
TEN_PM = "10:00 PM"


CLASS_SCHEDULE = [
    (SEVEN_AM, "7:00 AM"),
    (EIGHT_AM, "8:00 AM"),
    (NINE_AM, "9:00 AM"),
    (TEN_AM, "10:00 AM"),
    (ELEVEN_AM, "11:00 AM"),
    (TWELVE_M, "12:00 M"),
    (ONE_PM, "1:00 PM"),
    (TWO_PM, "2:00 PM"),
    (THREE_PM, "3:00 PM"),
    (FOUR_PM, "4:00 PM"),
    (FIVE_PM, "5:00 PM"),
    (SIX_PM, "6:00 PM"),
    (SEVEN_PM, "7:00 PM"),
    (EIGHT_PM, "8:00 PM"),
    (NINE_PM, "9:00 PM"),
    (TEN_PM, "10:00 PM"),
]


class Class(models.Model):
    # fecha date [default:`now()`]
    day = models.CharField(max_length=10, choices=DAYS, default="")
    # TODO: We really need these fields, what aattributes or default alues could they have?
    start_time = models.CharField(
        max_length=8, choices=CLASS_SCHEDULE, default="")
    end_time = models.CharField(
        max_length=8, choices=CLASS_SCHEDULE, default="")
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self) -> dict:
        class_as_object = {
            "id": self.id,
            "date": self.day,
            "start_time": self.start_time,
            "end_time": self.end_time,
            "created": self.created,
            "updated": self.updated,
        }
        return class_as_object

    def __str__(self) -> str:
        return f"{self.day}-{self.start_time}-{self.end_time}"
